#!/bin/bash

# Nmap Network Scanner Script
# Network Footprinting and Reconnaissance Tool
# Author: Rahul A G

echo "================================"
echo "  Network Footprinting with Nmap"
echo "================================"
echo ""

# Check if nmap is installed
if ! command -v nmap &> /dev/null; then
    echo "Error: Nmap is not installed. Please install it first."
    exit 1
fi

# Check if target is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <target_ip_or_network>"
    echo "Example: $0 192.168.1.0/24"
    exit 1
fi

TARGET=$1
OUTPUT_DIR="scan_results"
mkdir -p $OUTPUT_DIR

echo "Target: $TARGET"
echo "Output Directory: $OUTPUT_DIR"
echo ""

# 1. Host Discovery
echo "[*] Step 1: Host Discovery (Ping Scan)"
echo "Running: nmap -sn $TARGET"
nmap -sn $TARGET -oN $OUTPUT_DIR/host_discovery.txt
echo "Results saved to: $OUTPUT_DIR/host_discovery.txt"
echo ""

# 2. Port Scanning
echo "[*] Step 2: Port Scanning (Top 1000 ports)"
echo "Running: nmap -sS -sV $TARGET"
nmap -sS -sV $TARGET -oN $OUTPUT_DIR/port_scan.txt
echo "Results saved to: $OUTPUT_DIR/port_scan.txt"
echo ""

# 3. OS Detection and Fingerprinting
echo "[*] Step 3: OS Detection and Fingerprinting"
echo "Running: nmap -O $TARGET"
sudo nmap -O $TARGET -oN $OUTPUT_DIR/os_detection.txt
echo "Results saved to: $OUTPUT_DIR/os_detection.txt"
echo ""

# 4. Service Version Detection
echo "[*] Step 4: Service Version Detection"
echo "Running: nmap -sV --version-intensity 5 $TARGET"
nmap -sV --version-intensity 5 $TARGET -oN $OUTPUT_DIR/service_version.txt
echo "Results saved to: $OUTPUT_DIR/service_version.txt"
echo ""

# 5. Aggressive Scan
echo "[*] Step 5: Aggressive Scan (OS, Version, Script, Traceroute)"
echo "Running: nmap -A $TARGET"
nmap -A $TARGET -oN $OUTPUT_DIR/aggressive_scan.txt
echo "Results saved to: $OUTPUT_DIR/aggressive_scan.txt"
echo ""

# 6. Vulnerability Scanning with NSE Scripts
echo "[*] Step 6: Vulnerability Detection"
echo "Running: nmap --script vuln $TARGET"
nmap --script vuln $TARGET -oN $OUTPUT_DIR/vulnerability_scan.txt
echo "Results saved to: $OUTPUT_DIR/vulnerability_scan.txt"
echo ""

echo "================================"
echo "  Scan Complete!"
echo "================================"
echo "All results saved in: $OUTPUT_DIR/"
echo ""
echo "Summary of scans performed:"
echo "  1. Host Discovery"
echo "  2. Port Scanning"
echo "  3. OS Detection"
echo "  4. Service Version Detection"
echo "  5. Aggressive Scan"
echo "  6. Vulnerability Detection"
echo ""
