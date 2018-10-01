LOG ANALYSIS

1. Conceptual Approach : Wade through each line of log file using awk and grep to sort out lines which contained "Everything looks good". Then printed each of them to get the successful response time. After which the computation of given percentile stats about response time of successful responses was calculated.

2. Runtime performance: real-0m0.099s user-0m0.024s sys-0m0.008s
3. Complexity depends on the size of log file, command behaviour and even hardware considerations.
4. If time permits, the analyser can be developed to wade through any log file, and could be automated to read any type of information related to data sets.

