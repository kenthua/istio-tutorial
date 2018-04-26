#!/bin/bash

#URL="customer-tutorial.$(minishift ip).nip.io"
URL=`kubectl get svc -n tutorial | grep customer | awk '{print $4}'`

while true
do curl $URL:8080
sleep .1
done

