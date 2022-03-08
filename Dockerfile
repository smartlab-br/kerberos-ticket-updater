FROM alpine:3.15
LABEL maintainer="smartlab-dev@mpt.mp.br"

ENV KRB5_CONFIG=/etc/kerberos/krb5.conf

COPY start.sh /

RUN apk update && \
    apk add krb5 krb5-dev krb5-pkinit && \
    mkdir /etc/kerberos && \
    mkdir /etc/keytab

ENTRYPOINT ["sh", "/start.sh"]
