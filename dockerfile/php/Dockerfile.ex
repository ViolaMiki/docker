From centos 

RUN groupadd -r nginx && useradd -r -g nginx nginx;\
        rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm;\
        rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm;\
        yum install -y php71w php71w-opcache php71w-fpm php71w-pdo;\
        systemctl enable php-fpm.service;

USER nginx
VOLUME ["/home/nginx/workspace"]
EXPOSE 9000
CMD ["php-fpm”]
