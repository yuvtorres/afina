#!/bin/bash
# Download the pdf locally for processing

data_0=$(date -d 2021-02-03 +%Y%m%d)
now=$(date +%Y%m%d)
while [ $data_0 -le $now ]
do
	mes=$(date -d $data_0 +%m)
	dia=$(date -d $data_0 +%d)
	anno=$(date -d $data_0 +%Y)
	wget -P data https://www.omip.pt/sites/default/files/$anno-$mes/boletim_$dia$mes$anno.pdf
	data_0=$(date -d "$data_0 + 1 day" +%Y%m%d)

done


