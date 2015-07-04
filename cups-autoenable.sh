#!/bin/bash

# Copyright 2015, Tomas Edwardsson and Leonardo Soares 

# This script looks for disabled cups printers and automaticly
# enables them if disabled and clears the print queue of printers that were paused.

for printer in $(lpstat -p|grep disabled|awk '{print $2}')
do
	logger -t "cups-autoenable" "Printer ${printer} is disabled, auto-enabling"
	cupsenable ${printer}
	
	logger -t "cups-autoenable" "Printer ${printer} is witch queue, auto-clearing"
	cancel -a ${printer}
done