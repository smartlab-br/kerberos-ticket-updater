#!/bin/sh
echo "Job initialized"
KERBEROS_TICKET="$KERBEROS_PATH/$KERBEROS_KEYTAB"
kinit -kt $KERBEROS_TICKET $KERBEROS_USER
(( $? )) && exit 1
chmod 644 $KERBEROS_TICKET
echo "Job finished"
exit 0
