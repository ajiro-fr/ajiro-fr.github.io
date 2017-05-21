from tclavier/nginx

run apt-get update \
    && apt-get install -y \
      hugo \
      imagemagick \
      make \
    && apt-get clean

run apt-get update ; echo \
 && apt-get install -y \
    git \
    wget \
 && apt-get clean

run wget https://github.com/spf13/hugo/releases/download/v0.20.7/hugo_0.20.7_Linux-64bit.deb -O /tmp/hugo.deb \
 && dpkg -i /tmp/hugo.deb \
 && rm -f /tmp/hugo.deb

add . /site
workdir /site
run make
run /usr/bin/hugo --destination=/var/www
add nginx_vhost.conf /etc/nginx/conf.d/blog.conf
