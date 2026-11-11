
#!/bin/bash

echo "=========================="
echo "DevOps System Information"
echo "=========================="

echo "Current User:"
whoami

echo "Hostname:"
hostname

echo "Current Date:"
date

echo "Disk Usage:"
df -h

echo "Memory Information:"
free -h 2>/dev/null || vm_stat

echo "Script execution completed."
