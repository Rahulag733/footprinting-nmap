# Footprinting with Nmap

## 🔍 Project Overview

A comprehensive network security project demonstrating professional network reconnaissance and footprinting techniques using Nmap. This project showcases various scanning methodologies used in penetration testing and security assessments.

## 🎯 Features

- **Host Discovery**: Identify live hosts on a network
- **Port Scanning**: Discover open ports and services
- **OS Detection**: Fingerprint operating systems
- **Service Version Detection**: Identify service versions running on open ports
- **Aggressive Scanning**: Comprehensive scan with OS detection, version detection, script scanning, and traceroute
- **Vulnerability Detection**: Scan for common vulnerabilities using NSE scripts

## 🛠️ Technologies Used

- **Nmap**: Network exploration and security auditing tool
- **Bash Scripting**: Automation of scanning processes
- **Linux**: Primary operating system for security testing

## 📋 Prerequisites

```bash
# Install Nmap on Ubuntu/Debian
sudo apt-get update
sudo apt-get install nmap

# Install Nmap on Fedora/RHEL
sudo dnf install nmap

# Verify installation
nmap --version
```

## 🚀 Usage

### Basic Usage

```bash
# Make the script executable
chmod +x nmap_scanner.sh

# Run the script with a target IP or network
./nmap_scanner.sh 192.168.1.0/24

# For single host
./nmap_scanner.sh 192.168.1.100
```

### Example Output

The script creates a `scan_results` directory with the following files:

- `host_discovery.txt` - List of active hosts
- `port_scan.txt` - Open ports and services
- `os_detection.txt` - Operating system fingerprints
- `service_version.txt` - Detailed service version information
- `aggressive_scan.txt` - Comprehensive scan results
- `vulnerability_scan.txt` - Vulnerability assessment results

## 📊 Scan Types Performed

### 1. Host Discovery (Ping Scan)
```bash
nmap -sn <target>
```
Identifies which hosts are up without port scanning.

### 2. Port Scanning
```bash
nmap -sS -sV <target>
```
SYN scan with service version detection.

### 3. OS Detection
```bash
nmap -O <target>
```
Attempts to identify the operating system.

### 4. Service Version Detection
```bash
nmap -sV --version-intensity 5 <target>
```
Detailed service and version information.

### 5. Aggressive Scan
```bash
nmap -A <target>
```
Enables OS detection, version detection, script scanning, and traceroute.

### 6. Vulnerability Scanning
```bash
nmap --script vuln <target>
```
Runs vulnerability detection scripts from NSE library.

## ⚠️ Legal Disclaimer

**IMPORTANT**: This tool is for educational and authorized security testing purposes only.

- Only scan networks and systems you own or have explicit written permission to test
- Unauthorized network scanning may be illegal in your jurisdiction
- Always follow responsible disclosure practices
- Understand and comply with local computer crime laws

## 🎓 Learning Outcomes

- Network reconnaissance techniques
- Understanding of TCP/IP protocols
- Port scanning methodologies
- Operating system fingerprinting
- Service enumeration
- Vulnerability assessment basics

## 🔐 Security Best Practices

1. **Always get permission** before scanning any network
2. **Scan responsibly** - avoid aggressive scans on production systems
3. **Document findings** properly for security reports
4. **Use results ethically** for improving security posture

## 📚 Key Concepts Demonstrated

- **Footprinting**: Gathering information about target systems
- **Enumeration**: Identifying active hosts and services
- **Reconnaissance**: Information gathering phase of penetration testing
- **Network Mapping**: Understanding network topology and architecture

## 👨‍💻 Author

**Rahul A G**
- Computer Science Student
- Cybersecurity Enthusiast
- [LinkedIn](https://www.linkedin.com/in/rahulraj79186)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## 📝 License

This project is for educational purposes only.

## 🔗 Resources

- [Nmap Official Documentation](https://nmap.org/book/man.html)
- [Nmap NSE Scripts](https://nmap.org/nsedoc/)
- [Network Security Best Practices](https://www.sans.org/)

---

**Note**: This project was created as part of my internship experience and academic learning in cybersecurity and network security.
