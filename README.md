# IPFinder
IPFinder Script for CSEC465 Lab 3

To run this script, simply download the .ps1 file to the directory of your choice. In a PowerShell prompt, cd to the directory that you downloaded the file to, and run the command ".\IPFinder.ps1" without quotes. At the prompt, give the full filepath of the file that contains the list of hostnames to be checked. If the script and hostnames file are in the same directory, you only have to specify the name of the file. The file should contain a hostname on each line. See the example "hostnames.txt" file for further clarification. When executed properly, the script should output all IPV4 and IPV6 IPs for any hostnames that have a DNS record on the system.

Example output:


Input the path of the file containing the hostnames: hostnames.txt
Ip addresses associated with 'cnn.com'
2a04:4e42:200::323
2a04:4e42::323
2a04:4e42:600::323
2a04:4e42:400::323
151.101.129.67
151.101.65.67
151.101.193.67
151.101.1.67

Ip addresses associated with 'facebook.com'
2a03:2880:f127:83:face:b00c:0:25de
157.240.2.35

Ip addresses associated with 'totallyfake.roc'
No IP addresses found for this host.

Ip addresses associated with 'google.com'
2607:f8b0:4006:802::200e
172.217.10.14

Ip addresses associated with 'reddit.com'
151.101.65.140
151.101.193.140
151.101.129.140
151.101.1.140

Ip addresses associated with 'reddit.fake'
No IP addresses found for this host.

Ip addresses associated with 'facebook.fake'
No IP addresses found for this host.
