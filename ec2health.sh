#!/bin/bash

# Set output file path
output_file="./sumit.txt"

# Write health check details to the file
{
echo "=== EC2 Instance Health Check ==="
echo "Date: $(date)"

echo -e "\n[CPU Load]"
uptime

echo -e "\n[Memory Usage]"
free -h

echo -e "\n[Disk Usage]"
df -h /

echo -e "\n[Internet Check]"
ping -c 2 google.com &> /dev/null && echo "Internet: OK" || echo "Internet: NOT WORKING"

echo -e "\nHealth check completed."
} > "$output_file"

