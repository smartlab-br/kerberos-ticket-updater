#!/bin/sh
echo "Job initialized"
kinit -kt "$KERBEROS_PATH/$KERBEROS_KEYTAB" $KERBEROS_USER
echo "Job finished"
