## Networking Commands:
1. ifconfig:
Display information about network interfaces, including IP addresses and MAC addresses.
`ifconfig`
2. ip:
A more powerful tool for configuring network interfaces and displaying routing information.
`ip address show`
3. ping:
Test the reachability of a host on a network using ICMP.
`ping google.com`
4. traceroute or tracepath:
Determine the route packets take to reach a destination.
`traceroute google.com`
5. netstat:
Display network-related information such as open ports and routing tables.
`netstat -an`
6. ss:
A modern replacement for netstat with more detailed information.
`ss -a`
7. dig:
Query DNS servers for information about host addresses, mail exchanges, name servers, etc.
`dig google.com`
8. nslookup:
Query DNS for IP addresses and domain information.
`nslookup google.com`
9. host:
Similar to nslookup, used to perform DNS lookups.
`host google.com`
10. route:
`route -n`
11. iwconfig:
Display information about wireless network interfaces.
`iwconfig`
12. lsof:
List open files, including network connections.
`lsof -i`
13. tcpdump:
Capture and display packets on a network.
`tcpdump -i eth0`
14. hostname:
Display or set the system's hostname.
`hostname`
15. ifup and ifdown:
Activate or deactivate a network interface.
`sudo ifup eth0`
16. arp:
Display and manipulate the Address Resolution Protocol (ARP) cache.
`arp -a`
17. route:
Show or manipulate the IP routing table.
`route -n`
18. nmap:
Network exploration tool and security/port scanner.
`nmap -p 80 google.com`
19. wget or curl:
Download files from the internet.
`wget https://example.com/file.txt`
