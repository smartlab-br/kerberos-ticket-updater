#!/bin/sh
echo "Job initialized"
cat $KERBEROS_KEYTAB | base64 > /tmp/krb5.keytab
kinit -kt /tmp/krb5.keytab $KERBEROS_USER
echo "Job finished"
sleep 3600
