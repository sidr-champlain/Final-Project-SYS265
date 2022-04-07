# Final-Project-SYS265

Systems Administration 2: Final Group Project

You and your team are going to build a medium-sized enterprise from scratch for a client over a period of some weeks. Your team will demonstrate your integration efforts to a client manager as part of user acceptance testing in a series of milestones.



| All Project VMs | LAN IP | Description |
| ---         |     ---     |          --- |
| FW1| 172.16.1.2     | Pfsense Firewall between SYS265-WAN and GROUP-LAN    |
| Docker     | 172.16.1.5       | Ubuntu 20.04 Cloud Server, Dockerized CMS     |
| DHCP1, DHCP2    | 172.16.1.10 172.16.1.11    | Centos 7, Redundant DHCP, and Controlled by Ansible via SSH/RSA Keys|
| DC1, DC2   | 172.16.1.12 172.16.1.13   | Server 2019 Core, Redundant ADDS and DNS Services   |
| MGMT1 | 172.16.1.14     | Server 2019 GUI, Manages DC1, DC2    |
| W1, W2 | 172.16.1.100-150   | DHCP Client/Domain Joined .100-.150  |
| MGMT2| Pick a free IP outside of the DHCP scope   | Ubuntu 20.04 Cloud Server and Ansible/Network Management |
| DFS1, DFS2| Based on W1 and W2    | Distributed File System that Stores Domain User Profiles & Desktop   |
| util | 172.16.1.15     | CentOS 7 and Domain Joined   |

