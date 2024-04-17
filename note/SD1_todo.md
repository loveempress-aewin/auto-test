
|page			|group					|todo												|status	|
|:--:			|:--:					|:--:												|:--:	|
|1-flashimage	|						|ipmitoollanprint1									|<->	|
|3-os			|						|ipmitoolmcinfo										|<->	|
|				|						|ipmitooluserlist1									|<->|
|				|staticip				|sudoipmitoollanset1isprcstatic						|pass|
|				|staticip				|sudoipmitoollanset1ipaddr192.168.199.11			|pass|
|				|staticip				|sudoipmitoollanset1netmask255.255.255.0			|pass|
|				|staticip				|sudoipmitoollanset1defgw192.168.199.1				|pass|
|				|staticip				|sudoipmitoollanset1arprespondon					|pass|
|				|setusername&pswd		|sudoipmitooluserset1								|<->|
|				|setusername&pswd		|sudoipmitoolusersetname2admin						|<->|
|				|setusername&pswd		|sudoipmitoolusersetpassword2admin					|<->|
|				|setusername&pswd		|sudoipmitoolusersetenable2							|<->|
|				|setusername&pswd		|sudoipmitooluserpriv241							|<->|
|				|setusername&pswd		|sudoipmitoolchannelsetaccess12						|<->|
|				|CONTINUE				|=onipmi=onlink=onperv=4							|<->|
|				|ipmitoolsetmacaddr		|sudoipmitoolraw0x0c0x010x010xc20x00				|<->|
|				|ipmitoolsetmacaddr		|sudoipmitoolraw0x0c0x010x010x05					|<->|
|4,5webui\_part1|						|ipmitoolsdr										|<->|
|4,5webui\_part1|						|playwrighti										|<->|
|6-sensorpage	|						|ipmitoolsdr										|<->|
|6-sensorpage	|						|ipmitoolsensor										|<->|
|6-sensorpage	|						|ipmitoolsdrlist									|<->|
|6-sensorpage	|						|ipmitoolsdrtypefan									|<->|
|6-sensorpage	|						|ipmitoolsdrtypetemp								|<->|
|6-sensorpage	|						|ipmitoolsdrtypevoltage								|<->|
|				|						|ipmitoolsdr\|grepPSU								|<->|
|				|						|ipmitoolsdr\|grep-ifan								|<->|
|				|						|(playwright)										|<->|
|7-LogandReport	|						|(playwright3)										|<->|
|				|						|(playwright--\>downloadbutton(getfile))				|<->|
|				|						|ipmitoolselclear(checkcanclearitanduseWEB)			|<->|
|7-SEL			|						|ipmitoolselelist									|<->|
|				|						|ipmitoolselclear									|<->|
|				|7.1.6serverstabletest	|ipmitoolselclear									|<->|
|				|generateselevent		|ipmitoolevent1										|<-->|
|				|7.1.7&&7.1.8			|ipmitoolsel-vinfo									|<->|
|				|7.1.7&7.1.8			|ipmitoolevent1										|<->|
|				|7.1.7&7.1.8			|ipmitoolselelist									|<->|
|				|7.1.10circular			|(writescriptloopevent)								|<->|
|8-setting		|						|(playwrightscreenshot)								|<->|
|8.6smtpanddns	|						|...												|pass|
|913-WebUI-part	|						|(playwright-kvm)									|<->|
|				|10.imageredirection	|(playwrightscreen)									|<->|
|				|11.powercontrol		|(playwrightscreen)									|<->|
|				|12.maintenance			|(playwrightscreen)									|<->|
|				|12.1backupconfiguration|(playwrightscreen)									|<->|
|				|12.3bmcrecovery		|(playwrightscren)									|<->|
|				|12.4Firmwahrelmage		|(playwrightscreen)									|<->|
|				|12.4Firmwahreinfor		|(playwrightscreen)									|<->|
|				|12.5firmwahreupdate	|(playwrightscreen)									|<->|
|				|12.6preserveconf		|(playwrightscreen)									|<->|
|				|12.6restoreconf		|(playwrightscreen)									|<->|
|				|12.7restorefacc		|(playwrightscreen)									|<->|
|				|12.8systemadmin		|(playwrightscreen)									|<->|
|				|13signout				|(playwrightscreen)									|<->|
|14,15SOL		|16.check				|(playwrightscreen)									|<->|
|				|16.check				|(playwrightanoscreen)								|<->|
|17-security	|						|...												|skip|
|visual\_syslog	|						|(playwrightscreen)									|<->|

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
