#!/bin/bash

#URL="customer-tutorial.$(minishift ip).nip.io"
URL=`kubectl get ing customer-ingress -n tutorial -o=jsonpath='{.status.loadBalancer.ingress[].ip}'`

while true
do curl $URL
sleep .1
done

