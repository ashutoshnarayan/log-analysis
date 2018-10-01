#!/bin/bash
# log file analysis

LOG_FOLDER=~/log-analysis/log_input
LOG_FILE=$LOG_FOLDER/out.log
echo "Displaying Error Histogram"
histogram="`awk '{print $8}' $LOG_FILE | sort | uniq -c |sort -rn | head | grep "ERROR"`"
echo "$histogram"
echo
echo "Successful response time Histogram"
histogram_r="`awk '{print $8}' $LOG_FILE | sort| uniq -c| sort -rn | head | grep "INFO"`"
echo "$histogram_r"
echo
success_response="`grep "Everything looks good" $LOG_FILE | awk '{print $5}'`"
total_response="`grep "Everything looks good" $LOG_FILE | awk '{print $5}'| wc -l`"
echo "Total responses are :" $total_response
echo "50 percentile stats about successful response time is :"
fifty_per=$((100*50/($total_response)))
echo "$fifty_per"
echo
echo "90 percentile stats about successful response time is :"
ninety_per=$((100*90/($total_response)))
echo "$ninety_per"
echo 
echo "95 percentile stats about successful response time is :"
ninetyfive_per=$((100*95/($total_response)))
echo "$ninetyfive_per"
