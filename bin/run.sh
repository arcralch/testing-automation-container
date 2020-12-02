#!/bin/bash
echo $(date)
cd /customerinformation-service-test/customerinformation-service-test && git pull
cd /customerinformation-service-test/customerinformation-service-test && mvn clean verify