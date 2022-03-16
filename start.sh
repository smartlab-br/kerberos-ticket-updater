#!/bin/sh

echo "Job initialized"
kinit -kt $KERBEROS_KEYTAB $KERBEROS_USER
echo "Job finished"
