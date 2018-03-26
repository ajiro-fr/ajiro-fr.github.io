from tclavier/nginx

run apt-get update \
 && apt-get install -y \
    imagemagick \
    make \
    git \
    wget \
 && apt-get clean

run wget https://github.com/spf13/hugo/releases/download/v0.30.2/hugo_0.30.2_Linux-64bit.deb -O /tmp/hugo.deb \
 && dpkg -i /tmp/hugo.deb \
 && rm -f /tmp/hugo.deb

# Analyse script
run apt-get update \
&& apt-get install -y \
   python-bs4 \
   python-docopt \
   python-urllib3 \
   python-yaml \
&& apt-get clean

add . /site
workdir /site

run make download_images && make assets
run hugo_env=production hugo --buildFuture --destination=/var/www/prod
run hugo --buildDrafts --buildFuture --destination=/var/www/draft \
 && echo "User-agent: *" > /var/www/draft/robots.txt \
 && echo "Disallow:/ "  >> /var/www/draft/robots.txt

add nginx_vhost.conf /etc/nginx/conf.d/ajiro.conf
