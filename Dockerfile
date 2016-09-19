FROM alpine

RUN apk update \
 && apk upgrade

COPY etc /etc
COPY usr /usr

ENTRYPOINT ["/usr/local/bin/php", "-r", "require '/opt/vendor/autoload.php'; \App\Main::init();"]
