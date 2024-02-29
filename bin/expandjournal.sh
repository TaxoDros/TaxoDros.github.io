#!/bin/bash
#
#  expand journal short names to journal long names using ASHBURN.TEXT
#
#  example usage:
#    cat ASHBURN.TEXT | ./expandjournal.sh
#
#    

 tr -d '\r'\
 | sed 's/#/\n/g'\
 | sed -E 's/\*s[ ]+//g'\
 | sed -E 's/[ ]+\*u[ ]+/\t/g'\
 | sed -E 's/[ ]*$//g'\
 | grep -vP 'Arthropoda\tArthropoda'\
 | grep -E '[\t]+'\
