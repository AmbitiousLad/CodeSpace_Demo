# System Health Check

This project contains a Bash script, `health_check.sh`, that monitors the health of your system by checking key performance metrics: CPU usage, memory usage, and disk usage. The script provides a simple way to assess whether your system is operating within healthy parameters.

## Purpose

The `health_check.sh` script is designed to help users quickly determine the health status of their system. It checks the following metrics:

- **CPU Usage**: The percentage of CPU currently in use.
- **Memory Usage**: The percentage of RAM currently in use.
- **Disk Usage**: The percentage of disk space used on the root partition.

## Usage

To use the script, follow these steps:

1. Open a terminal.
2. Navigate to the directory where the `health_check.sh` script is located.
3. Run the script using the following command:

   ```bash
   ./health_check.sh
   ```

   This will provide a simple output indicating whether the system is "Healthy" or "Unhealthy" based on the usage metrics.

4. For a detailed status report, run the script with the "explain" argument:

   ```bash
   ./health_check.sh explain
   ```

   This will display the current CPU, memory, and disk usage percentages along with the overall health status.

## Interpreting Output

- If the output indicates "Healthy", it means that all monitored metrics are below 60%.
- If the output indicates "Unhealthy", it means that at least one of the monitored metrics exceeds 60%.

This script is a useful tool for system administrators and users who want to keep an eye on their system's performance and ensure it operates smoothly.