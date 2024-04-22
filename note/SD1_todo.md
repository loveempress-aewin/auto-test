|page					|group					|todo												|status|
|:----------------:		|:---------------------:|:-------------------------------------------------:|:----:|
| 1-flash image			|						| ipmitool lan print 1								| <->|
| 3-os 					|						| ipmitool mc info									| <->|
|						|						| ipmitool user list 1								| <->|
|						| static ip				| sudo ipmitool lan set 1 isprc static				| skip |
|						| static ip				| sudo ipmitool lan set 1 ipaddr 192.168.199.11 	| skip |
|						| static ip				| sudo ipmitool lan set 1 netmask 255.255.255.0 	| skip |
|						| static ip				| sudo ipmitool lan set 1 defgw 192.168.199.1 		| skip |
|						| static ip				| sudo ipmitool lan set 1 arp respond on			| skip |
|						| set user name&pswd 	| sudo ipmitool user set 1							| <->|
|						| set user name&pswd 	| sudo ipmitool user set name 2 admin 				| <->|
|						| set user name&pswd 	| sudo ipmitool user set password 2 admin 			| <->|
|						| set user name&pswd 	| sudo ipmitool user set enable 2 					| <->|
|						| set user name&pswd 	| sudo ipmitool user priv 2 4 1 					| <->|
|						| set user name&pswd 	| sudo ipmitool channel set access 1 2				| <->|
|						| $((CONTINUE))			| = on ipmi = on link = on perv =4					| <->|
|						| ipmitool set mac addr	| sudo ipmitool raw 0x0c 0x01 0x01 0xc2 0x00		| <->|
|						| ipmitool set mac addr	| sudo ipmitool raw 0x0c 0x01 0x01 0x05 			| <->|
| 4,5 webui\_part1 		|						| ipmitool sdr										| <->|
| 4,5 webui\_part1 		|						| {playwright}										| <->|
| 6-sensor page			|						| ipmitool sdr										| <->|
| 6-sensor page			|						| ipmitool sensor 									| <->|
| 6-sensor page			|						| ipmitool sdr list 								| <->|
| 6-sensor page			|						| ipmitool sdr type fan 							| <->|
| 6-sensor page			|						| ipmitool sdr type temp							| <->|
| 6-sensor page			|						| ipmitool sdr type voltage 						| <->|
|						|						| ipmitool sdr \| grep PSU							| <->|
|						|						| ipmitool sdr \| grep -i fan 						| <->|
|						|						| {playwright}										| <->|
| 7-Log and Report 		|						| {playwright 3}									| <->|
|						|						| {playwright --> download button (get file)} 		| <->|
|						|						| ipmitool sel clear (check clear it and use WEB) 	| <->|
| 7-SEL					|						| ipmitool sel elist								| <->|
|						|						| ipmitool sel clear								| <->|
|						| 7.1.6 server stable	| ipmitool sel clear								| <->|
|						| generate sel event 	| ipmitool event 1									| <--> |
|						| 7.1.7 &&7.1.8			| ipmitool sel -v info								| <->|
|						| 7.1.7 & 7.1.8			| ipmitool event 1									| <->|
|						| 7.1.7 & 7.1.8			| ipmitool sel elist								| <->|
|						| 7.1.10 circular		| (write script loop event) 						| <->|
| 8-setting				|						| (playwright screenshot) 							| <->|
| 8.6 smtp and dns 		|						| ... 												| skip |
| 9-13-WebUI-part2 		|						| {playwright-kvm}									| <->|
|						| 10.image redirection 	| {playwright screen} 								| <->|
|						| 11.power control 		| {playwright screen} 								| <->|
|						| 12.maintenance 		| {playwright screen} 								| <->|
|						| 12.1backup configu 	| {playwright screen} 								| <->|
|						| 12.3bmc recovery 		| {playwright scren}								| <->|
|						| 12.4Firmwahre lmage	| {playwright screen} 								| <->|
|						| 12.4Firmwahre infor	| {playwright screen} 								| <->|
|						| 12.5firmwahre update 	| {playwright screen} 								| <->|
|						| 12.6preserve conf		| {playwright screen} 								| <->|
|						| 12.6restore conf 		| {playwright screen} 								| <->|
|						| 12.7restore facc 		| {playwright screen} 								| <->|
|						| 12.8system admin 		| {playwright screen} 								| <->|
|						| 13 sign out			| {playwright screen} 								| <->|
|14,15SOL 				| 16.check 				| {playwright screen} 								| <->|
|						| 16.check 				| {playwright ano screen} 							| <->|
| 17-security			|						| ... 												| skip |
| visual_syslog			|						| {playwright screen} 								| <->|

