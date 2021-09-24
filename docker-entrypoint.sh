#!/bin/bash
##########################
#    PINTO ENTRYPOINT    #
##########################


if [[ ! -d /opt/pinto/stacks ]]
then
   echo "[-] Empty pinto directory - initializing"
   pinto --root /opt/pinto init
fi

pintod --root=/opt/pinto --port=8866
#exec "$@"
