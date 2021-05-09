#!/bin/bash
VAL=`curl  -s 'https://query1.finance.yahoo.com/v8/finance/chart/NOK' | grep -o '"regularMarketPrice":[0-9]*\.[0-9]*' | cut -d':' -f2`

echo \$$VAL
