#!/bin/bash
VAL=`curl  -s 'https://query1.finance.yahoo.com/v8/finance/chart/MT.AS' | grep -o '"regularMarketPrice":[0-9]*\.[0-9]*' | cut -d':' -f2`

VAL2=`curl  -s 'https://query1.finance.yahoo.com/v8/finance/chart/RKT' | grep -o '"regularMarketPrice":[0-9]*\.[0-9]*' | cut -d':' -f2`
echo $VAL $VAL2
