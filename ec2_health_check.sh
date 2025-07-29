#!/bin/bash

echo "=== EC2 Instance Health Check ==="
echo "Date: $(date)"

# Check CPU load
echo -e "\n[CPU Load]"
uptime

# Check memory usage
echo -e "\n[Memory Usage]"
free -h

# Check disk usage
echo -e "\n[Disk Usage]"
df -h /

# Check network connectivity
echo -e "\n[Internet Check]"
ping -c 2 google.com &> /dev/null && echo "Internet: OK" || echo "Internet: NOT WORKING"

echo -e "\nHealth check completed."

