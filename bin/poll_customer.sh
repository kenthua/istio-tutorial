#!/bin/bash

#URL="customer-tutorial.$(minishift ip).nip.io"
URL=`kubectl get svc customer -n tutorial -o=jsonpath='{.status.loadBalancer.ingress[].ip}'`

while true
do curl $URL:8080
sleep .1
done

