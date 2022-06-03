FROM alpine:3.15
LABEL maintainer="smartlab-dev@mpt.mp.br"

ENV KRB5_CONFIG=/etc/kerberos/krb5.conf
ENV TZ America/Sao_Paulo

COPY start.sh /

RUN apk update \
 && apk add --no-cache tzdata krb5 krb5-dev krb5-pkinit \
 && mkdir /etc/kerberos \
 && chmod +x start.sh

ENTRYPOINT ["sh", "/start.sh"]
