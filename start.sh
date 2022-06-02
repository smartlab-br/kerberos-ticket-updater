#!/bin/sh
echo "Job initialized"
echo "$KERBEROS_KEYTAB" | base64 -d > /tmp/krb5.keytab
kinit -kt /tmp/krb5.keytab $KERBEROS_USER
echo "Job finished"
