from tclavier/nginx

run apt-get update \
 && apt-get install -y \
    hugo \
    imagemagick \
    make \
    git \
    wget \
 && apt-get clean

run wget https://github.com/spf13/hugo/releases/download/v0.20.7/hugo_0.20.7_Linux-64bit.deb -O /tmp/hugo.deb \
 && dpkg -i /tmp/hugo.deb \
 && rm -f /tmp/hugo.deb

add . /site
workdir /site
run make assets
run hugo_env=production hugo --destination=/var/www/prod
run hugo --buildDrafts --destination=/var/www/draft

add nginx_vhost.conf /etc/nginx/conf.d/ajiro.conf
