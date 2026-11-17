
#!/bin/bash

echo "=========================="
echo "System Health Check"
echo "=========================="

DISK_USAGE=$(df -P / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "Root Disk Usage: ${DISK_USAGE}%"

if [ "$DISK_USAGE" -ge 80 ]; then
    echo "WARNING: Disk usage is high!"
else
    echo "STATUS: Disk usage is normal."
fi

echo "Health check completed."
