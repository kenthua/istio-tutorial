#!/bin/bash

#URL="customer-tutorial.$(minishift ip).nip.io"
URL=`kubectl get ing -n tutorial | grep customer | awk '{print $3}'`

while true
do curl $URL
sleep .1
done

