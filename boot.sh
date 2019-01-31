#!/usr/bin/env bash

sed -i.bak '/exec bash/d' ./usr/bin/docker-quickstart
echo "++++++ Prepare to run docker-quickstart script ++++++"
/usr/bin/docker-quickstart

echo "++++++ Date is: $(date) ++++++"
sudo chkconfig --add ntpd

sudo service ntpd start
echo "++++++ Service ntpd status: $(service ntpd status) ++++++"

sleep 15
echo "++++++ Date is: $(date) ++++++"

echo "++++++ Run cloudera-manager --express ++++++"
/home/cloudera/cloudera-manager --express

exec bash