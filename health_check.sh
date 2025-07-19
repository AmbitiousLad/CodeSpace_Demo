#!/bin/bash

# Function to get CPU usage
get_cpu_usage() {
    top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | awk '{printf "%.0f", $1}'
}

# Function to get Memory usage
get_mem_usage() {
    free | awk '/Mem:/ {printf "%.0f", ($3/$2)*100 }'
}

# Function to get Disk usage (root partition)
get_disk_usage() {
    df / | awk 'NR==2 {print $5}' | tr -d '%'
}

# Function to print status
print_status() {
    cpu=$(get_cpu_usage)
    mem=$(get_mem_usage)
    disk=$(get_disk_usage)

    echo "CPU Usage: $cpu%"
    echo "Memory Usage: $mem%"
    echo "Disk Usage: $disk%"

    if [ "$cpu" -gt 60 ] || [ "$mem" -gt 60 ] || [ "$disk" -gt 60 ]; then
        echo "Status: Unhealthy"
    else
        echo "Status: Healthy"
    fi
}

# Main
if [[ "$1" == "explain" ]]; then
    print_status
else
    cpu=$(get_cpu_usage)
    mem=$(get_mem_usage)
    disk=$(get_disk_usage)

    if [ "$cpu" -gt 60 ] || [ "$mem" -gt 60 ] || [ "$disk" -gt 60 ]; then
        echo "Unhealthy"
    else
        echo "Healthy"
    fi
fi