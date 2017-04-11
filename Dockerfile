from debian:testing

env DEBIAN_FRONTEND noninteractive
run sed -e 's/deb.debian.org/debian.mirrors.ovh.net/g' -i /etc/apt/sources.list

run apt-get update \
 && apt-get install -y \
    bundler \
    git \
    locales \
    ruby \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

run echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
 && locale-gen

run mkdir -p /workspace
workdir /workspace
copy Gemfile /workspace/
copy Gemfile.lock /workspace/
run bundle install --system --quiet

run LANG=en_US.UTF-8 jekyll build --destination /var/www
