#!/bin/bash
# DNS server Transfer Vulnerabiility test tools


for target in $(host -t ns $1 |awk -F " " '{print $4}');do
        host -l $1 $target  |grep address
done
