
---
| page             | group                    | todo                                                | status |
|:----------------:|:------------------------:|:---------------------------------------------------:|:------:|
| 1-flash image    |                          | ipmitool lan print 1                                | <->    |
| 3-os             |                          | ipmitool mc info                                    | <->    |
|                  |                          | ipmitool user list 1                                | <->    |
|                  | static ip                | sudo ipmitool lan set 1 isprc static                | pass   |
|                  | static ip                | sudo ipmitool lan set 1 ipaddr 192.168.199.11       | pass   |
|                  | static ip                | sudo ipmitool lan set 1 netmask 255.255.255.0       | pass   |
|                  | static ip                | sudo ipmitool lan set 1 defgw 192.168.199.1         | pass   |
|                  | static ip                | sudo ipmitool lan set 1 arp respond on              | pass   |
|                  | set user name&pswd       | sudo ipmitool user set 1                            | <->    |
|                  | set user name&pswd       | sudo ipmitool user set name 2 admin                 | <->    |
|                  | set user name&pswd       | sudo ipmitool user set password 2 admin             | <->    |
|                  | set user name&pswd       | sudo ipmitool user set enable 2                     | <->    |
|                  | set user name&pswd       | sudo ipmitool user priv 2 4 1                       | <->    |
|                  | set user name&pswd       | sudo ipmitool channel set access 1 2                | <->    |
|                  | CONTINUE                 | = on ipmi = on link = on perv =4                    | <->    |
|                  | ipmitool set mac addr    | sudo ipmitool raw 0x0c 0x01 0x01 0xc2 0x00          | <->    |
|                  | ipmitool set mac addr    | sudo ipmitool raw 0x0c 0x01 0x01 0x05               | <->    |
| 4,5 webui\_part1 |                          | ipmitool sdr                                        | <->    |
| 4,5 webui\_part1 |                          | {playwright}                                        | <->    |
| 6-sensor page    |                          | ipmitool sdr                                        | <->    |
| 6-sensor page    |                          | ipmitool sensor                                     | <->    |
| 6-sensor page    |                          | ipmitool sdr list                                   | <->    |
| 6-sensor page    |                          | ipmitool sdr type fan                               | <->    |
| 6-sensor page    |                          | ipmitool sdr type temp                              | <->    |
| 6-sensor page    |                          | ipmitool sdr type voltage                           | <->    |
|                  |                          | ipmitool sdr \| grep PSU                            | <->    |
|                  |                          | ipmitool sdr \| grep -i fan                         | <->    |
|                  |                          | {playwright}                                        | <->    |
| 7-Log and Report |                          | {playwright 3}                                      | <->    |
|                  |                          | {playwright --> download button (get file)}         | <->    |
|                  |                          | ipmitool sel clear (check can clear it and use WEB) | <->    |
| 7-SEL            |                          | ipmitool sel elist                                  | <->    |
|                  |                          | ipmitool sel clear                                  | <->    |
|                  | 7.1.6 server stable test | ipmitool sel clear                                  | <->    |
|                  | generate sel event       | ipmitool event 1                                    | <-->   |
|                  | 7.1.7 &&7.1.8            | ipmitool sel -v info                                | <->    |
|                  | 7.1.7 & 7.1.8            | ipmitool event 1                                    | <->    |
|                  | 7.1.7 & 7.1.8            | ipmitool sel elist                                  | <->    |
|                  | 7.1.10 circular          | (write script loop event)                           | <->    |
| 8-setting        |                          | (playwright screenshot)                             | <->    |
| 8.6 smtp and dns |                          | ...                                                 | pass   |
| 9-13-WebUI-part2 |                          | {playwright-kvm}                                    | <->    |
|                  | 10.image redirection     | {playwright screen}                                 | <->    |
|                  | 11.power control         | {playwright screen}                                 | <->    |
|                  | 12.maintenance           | {playwright screen}                                 | <->    |
|                  | 12.1backup configuration | {playwright screen}                                 | <->    |
|                  | 12.3bmc recovery         | {playwright scren}                                  | <->    |
|                  | 12.4Firmwahre lmage      | {playwright screen}                                 | <->    |
|                  | 12.4Firmwahre infor      | {playwright screen}                                 | <->    |
|                  | 12.5firmwahre update     | {playwright screen}                                 | <->    |
|                  | 12.6preserve conf        | {playwright screen}                                 | <->    |
|                  | 12.6restore conf         | {playwright screen}                                 | <->    |
|                  | 12.7restore facc         | {playwright screen}                                 | <->    |
|                  | 12.8system admin         | {playwright screen}                                 | <->    |
|                  | 13 sign out              | {playwright screen}                                 | <->    |
| 14,15SOL         | 16.check                 | {playwright screen}                                 | <->    |
|                  | 16.check                 | {playwright ano screen}                             | <->    |
| 17-security      |                          | ...                                                 | skip   |
| visual_syslog    |                          | {playwright screen}                                 | <->    |

---

| line | descript|status|
| 5:   | 7:## [ ] 1-Flash_Image                                      |  <->      |
| 11:  | 17:## [ ] 3-OS                                              |  <->      |
| 31:  | 45:### [ ] + Using ipmitool to set mac address.             |  <->      |
| 39:  | 57:# [ ] 4,5 WebUI_part1                                    |  <->      |
| 42:  | 62:# [ ] 6-sensor page                                      |  <->      |
| 57:  | 81:# [ ] 7-Log and Report Page                              |  <->      |
| 67:  | 100:### [ ] 7.1.2 download log                              |  <->      |
| 72:  | 106:### [ ] 7.1.3 clear log                                 |  <->      |
| 76:  | 111:### [ ] 7.1.6 server stable test                        |  <->      |
| 86:  | 128:### [ ] 7.1.9 check sel date and time                   |  <->      |
| 100: | 144:### [ ] 7.1.10 check if default mode is circular mode   |  <->      |
| 126: | 193:# [ ] 7.1.11 check sel log after reboot                 |  <->      |
| 130: | 201:# [ ] 8-setting (playwright)                            |  <->      |
| 131: | 205:# [ ] 8.6 SMTP and DNS Config  (pass)                   |  <->      |
| 132: | 208:# [ ] 8.11 SYSTEM FIREWALL (pass)                       |  <->      |
| 133: | 211:# [ ] 9-13 webui_part2                                  |  <->      |
| 134: | 213:### [ ] remote control ###                              |  <->      |
| 136: | 217:### [ ] lunch kvm  (pass) ###                           |  <->      |
| 137: | 219:### [ ] image redirection (playwright) ###              |  <->      |
| 138: | 221:### [ ] power control (playwright) ###                  |  <->      |
| 140: | 224:### [ ] maintenance (playwright)     ###                |  <->      |
| 141: | 227:### [ ] backup configuration (playwright) ###           |  <->      |
| 142: | 230:### [ ] bmc recovery (playwright) ###                   |  <->      |
| 143: | 233:### [ ] 12.4 firmwahre iimage location (playwright) ### |  <->      |
| 145: | 236:### [ ] firmwhare information (playwright) ###          |  <->      |
| 146: | 239:### [ ] firmwware update (playwright) ###               |  <->      |
| 147: | 242:### [ ] 12.6 preserve configuration  (playwright) ###   |  <->      |
| 149: | 245:### [ ] 12.6 restore configuration ###                  |  <->      |
| 150: | 247:### [ ] 12.7 restore factory default (playwright) ###   |  <->      |
| 152: | 250:### [ ] 12.8 system administrator ###                   |  <->      |
| 153: | 252:### [ ] 13. sign out ###                                |  <->      |
| 155: | 257:# [ ] 14, 15 -SOL #                                     |  <->      |
| 156: | 259:### [ ] 14.under BIOS ( normal/ abnormal)(pass) ###     |  <->      |
| 157: | 262:### [ ] 15.under os ###                                 |  <->      |
| 162: | 269:### [ ] 16. SOL check(pass) ###                         |  <->      |
| 163: | 274:# [ ] 17-security_check #                               |  <->      |
| 167: | 279:### [ ] 17.2 nmap ###                                   |  <->      |
| 179: | 297:### [ ] nessus ###                                      |  <->      |
| 204: | 335:### [ ] 17.3 SSH ###                                    |  <->      |
| 223: | 366:### [ ] 17.3 Telnet ###                                 |  <->      |
| 232: | 379:### [ ] 17.4 remove SSL3 support ###                    |  <->      |
| 246: | 401:## [ ] Visual_syslog Server ##                          |  <->      |
| 248: | 404:# [ ] autorebootZ_test #                                |  <->      |
|      |                                                             |        |
