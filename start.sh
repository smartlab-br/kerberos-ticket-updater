#!/bin/sh
echo "Job initialized"
KERBEROS_TICKET="$KERBEROS_PATH/$KERBEROS_KEYTAB"
kinit -Vkt $KERBEROS_TICKET $KERBEROS_USER || exit 1
chmod 644 $KRB5CCNAME
echo "Job finished"
exit 0
