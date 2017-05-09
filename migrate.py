#!/usr/bin/python

import fnmatch
import os
import re
import shutil
import string


def list_items(directory, pattern="*.md"):
    for root, dirs, files in os.walk(directory):
        for f in files:
            if fnmatch.fnmatch(f, pattern):
                yield (f, os.path.join(root, f))


def nameof(filename):
    return os.path.splitext(filename)[0]


def extensionof(filename):
    return os.path.splitext(filename)[1]


def new_article_name(name):
    return name.replace('.', '_')


def ensure_directory(path):
    try:
        os.makedirs(path)
    except OSError:
        pass


def read_file(path):
    with open(path, 'r') as f:
        return f.read()


def write_file(path, content):
    with open(path, 'w') as f:
        f.write(str(content))


def no_translation(name, content):
    return content

def to_yaml(name, content):
    return "---\n" + content + "---\n"


def chain(*translators):
    def process(name, content):
        result = content
        for translator in translators:
            result = translator(name, result)
        return result
    return process


def remove_lines(*lines):
    def process(name, content):
        result = []
        for line in content.split('\n'):
            if not line in lines:
                result.append(line)
        return string.join(result, '\n')
    return process


def replace_pattern(pattern, repl, flags):
    def process(name, content):
        return re.sub(pattern, repl, content, 0, flags)
    return process


def copy_illustration(path, name):
    def process(item, source, target):
        shutil.copyfile(
            os.path.join(path, nameof(item) + '.jpg'),
            os.path.join(target, name + '.jpg'))
    return process


def copy_articles_assets(path):
    def cleanup_image_name(item_name):
        name,ext = os.path.splitext(item_name)
        return name[:-2] + ext
    def process(item, source, target):
        year,month,day,name = nameof(item).split('-', 3)
        for item_name, item_path in list_items(os.path.join(path, name), "*"):
            if item_name == "toto.txt":
                continue
            if fnmatch.fnmatch(item_name, "*-800p*"):
                continue
            if fnmatch.fnmatch(item_name, "*-o*"):
                item_name = cleanup_image_name(item_name)
            shutil.copyfile(
                item_path,
                os.path.join(target, nameof(item), item_name))
    return process


def copy_people_photo(path, name):
    def process(item, source, target):
        first, last = nameof(item).split('_')
        shutil.copyfile(
            os.path.join(path, last + '.' + first + '.jpg'),
            os.path.join(target, name + '.jpg'))
    return process


def copy_file():
    def process(item, source, destination):
        ensure_directory(destination)
        shutil.copyfile(source, os.path.join(destination, item))
    return process


def process_file_content(translator):
    def process(item, source, destination):
        target = os.path.join(destination, nameof(item))
        ensure_directory(target)
        write_file(
            os.path.join(target, 'index.md'),
            translator(
                nameof(item),
                read_file(source))
        )
    return process


def translate(items, destination, translators):
    for item, source in items:
        for translator in translators:
            translator(item, source, destination)


#translate(
#    items=list_items('_books'),
#    destination='content/books',
#    translators=[
#        process_file_content(remove_lines('layout: book')),
#        copy_illustration('assets/books', 'cover')])

#translate(
#    items=list_items('_games'),
#    destination='content/games',
#    translators=[
#        process_file_content(remove_lines('layout: game'))])

#translate(
#    items=list_items('_talks'),
#    destination='content/talks',
#    translators=[
#        process_file_content(remove_lines('layout: talk'))])

#translate(
#    items=list_items('_tales'),
#    destination='content/tales',
#    translators=[
#        process_file_content(remove_lines('layout: tale'))])

translate(
    items=list_items('articles/_posts'),
    destination='content/articles',
    translators=[
        process_file_content(
            chain(
                replace_pattern(
                    pattern="""{% include img.html\s*name=['"](?P<name>.*)['"]\s*source=['"](?P<source>.*)['"]\s*%}""",
                    repl="""{{< img name="\g<1>" source="\g<2>" >}}""",
                    flags=re.MULTILINE),
                replace_pattern(
                    pattern="""{% include img.html\s*name=['"](?P<name>.*)['"]\s*%}""",
                    repl="""{{< img name="\g<1>" >}}""",
                    flags=re.MULTILINE),
                replace_pattern(
                    pattern="""{% include img.html\s*name=['"](?P<name>.*)['"]\s*legend=['"](?P<legend>.*)['"]\s*source=['"](?P<source>.*)['"]\s*%}""",
                    repl="""{{< img name="\g<1>" legend="\g<2>" source="\g<3>" >}}""",
                    flags=re.MULTILINE),
                replace_pattern(
                    pattern="""{% include img.html\s*name=['"](?P<name>.*)['"]\s*legend=['"](?P<legend>.*)['"]\s*%}""",
                    repl="""{{< img name="\g<1>" legend="\g<2>" >}}""",
                    flags=re.MULTILINE),
                replace_pattern(
                    pattern="""{% include img-large.html\s*name=['"](?P<name>.*)['"]\s*source=['"](?P<source>.*)['"]\s*%}""",
                    repl="""{{< img-large name="\g<1>" source="\g<2>" >}}""",
                    flags=re.MULTILINE),
                replace_pattern(
                    pattern="""{% include img-large.html\s*name=['"](?P<name>.*)['"]\s*%}""",
                    repl="""{{< img-large name="\g<1>" >}}""",
                    flags=re.MULTILINE),
                replace_pattern(
                    pattern="""{% include youtube.html\s*video=['"](?P<video>.*)['"]\s*%}""",
                    repl="""{{< youtube \g<1> >}}""",
                    flags=re.MULTILINE),
            )),
        copy_articles_assets('assets/articles')])
