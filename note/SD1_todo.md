| page           | group               | todo                                                                 | status     |
|:--------------:|:-------------------:|:--------------------------------------------------------------------:|:----------:|
| 3-os           | set user name&pswd  | ipmitool user list 1                                                 | <->        |
| 3-os           | set user name&pswd  | ipmitool channel setaccess 1 2 callin=on ipmi=on link=on privilege=4 | <->        |
| 3-os           | set user name&pswd  | ipmitool user list 1                                                 | <->        |
| 3-os           |                     | ipmitool mc info                                                     | <->        |
| 1-flash image  |                     | ipmitool lan print 1                                                 | <->        |
| 6-sensor page  |                     | ipmitool sensor                                                      | <->        |
| 6-sensor page  |                     | ipmitool sdr type fan                                                | same\|g fan|
| 6-sensor page  |                     | ipmitool sdr type temp                                               | <->        |
| 6-sensor page  |                     | ipmitool sdr type voltage                                            | <->        |
| 6-sensor page  |                     | ipmitool sdr \| grep PSU                                             | <->        |
| 6-sensor page  |                     | {playwright}                                                         | <->        |
| 8-setting      |                     | (playwright screenshot)                                              | <->        |
| 9-13-WebUI-pt2 |                     | {playwright-kvm}                                                     | <->        |
| 9-13-WebUI-pt2 | 10.image redirectio | {playwright screen}                                                  | <->        |
| 9-13-WebUI-pt2 | 11.power control    | {playwright screen}                                                  | <->        |
| 9-13-WebUI-pt2 | 12.maintenance      | {playwright screen}                                                  | <->        |
| 9-13-WebUI-pt2 | 12.1backup configu  | {playwright screen}                                                  | <->        |
| 9-13-WebUI-pt2 | 12.3bmc recovery    | {playwright screen}                                                  | <->        |
| 9-13-WebUI-pt2 | 12.4Firmwahre lmage | {playwright screen}                                                  | <->        |
| 9-13-WebUI-pt2 | 12.4Firmwahre infor | {playwright screen}                                                  | <->        |
| 9-13-WebUI-pt2 | 12.5firmwahre updat | {playwright screen}                                                  | <->        |
| 9-13-WebUI-pt2 | 12.6preserve conf   | {playwright screen}                                                  | <->        |
| 9-13-WebUI-pt2 | 12.6restore conf    | {playwright screen}                                                  | <->        |
| 9-13-WebUI-pt2 | 12.7restore facc    | {playwright screen}                                                  | <->        |
| 9-13-WebUI-pt2 | 12.8system admin    | {playwright screen}                                                  | <->        |
| 9-13-WebUI-pt2 | 13 sign out         | {playwright screen}                                                  | <->        |
| visual_syslog  |                     | {playwright screen}                                                  | <->        |
| 7-Log and Rep  |                     | {playwright screen3}                                                 | <->        |
| 7-Log and Rep  |                     | {playwright --> download button (get file)}                          | <->        |
| 7-SEL          | 7.1.7 &&7.1.8       | ipmitool sel -v info                                                 | <->        |
| 7-Log and Rep  |                     | ipmitool sel clear (check clear it and use WEB)                      | <->        |
| 7-SEL          |                     | ipmitool sel elist                                                   | <->        |
| 7-SEL          |                     | ipmitool sel clear                                                   | <->        |
| 7-SEL          | 7.1.6 server stable | ipmitool sel clear                                                   | <->        |
| 7-SEL          | 7.1.7 & 7.1.8       | ipmitool event 1                                                     | <->        |
| 7-SEL          | 7.1.7 & 7.1.8       | ipmitool sel elist                                                   | <->        |

| thwor away    | abandon            | discard                                                               | fall away  |
| 6-sensor page |                    | ipmitool sdr \| grep -i fan                                           | same       |
| 4,5 webui\_1  |                    | ipmitool sdr                                                          | bbu same   |
| 4,5 webui\_1  |                    | {playwright}                                                          | bbu same   |
| 6-sensor page |                    | ipmitool sdr                                                          | bbu same   |
| page          | group              | todo                                                                  | status     |
| 7-SEL         | 7.1.10 circular    | (write script loop event) but this only write event 1 the STD is erro | bbu sel    |
| 14,15SOL      | 16.check           | {playwright screen}                                                   | cancel     |
| 14,15SOL      | 16.check           | {playwright ano screen}                                               | cancel     |
| 6-sensor page |                    | ipmitool sdr list                                                     | same-sdr   |
| 7-SEL         | generate sel event | ipmitool event 1                                                      | same-7.1.7 |
| 3-os          | set mac addr       | sudo ipmitool raw 0x0c 0x01 0x01 0xc2 0x00                            | bbu not do |
| 3-os          | set mac addr       | sudo ipmitool raw 0x0c 0x01 0x01 0x05                                 | bbu not do |
| 3-os          | static ip          | sudo ipmitool lan set 1 isprc static                                  | skip       |
| 3-os          | static ip          | sudo ipmitool lan set 1 ipaddr 192.168.199.11                         | skip       |
| 3-os          | static ip          | sudo ipmitool lan set 1 netmask 255.255.255.0                         | skip       |
| 3-os          | static ip          | sudo ipmitool lan set 1 defgw 192.168.199.1                           | skip       |
| 3-os          | static ip          | sudo ipmitool lan set 1 arp respond on                                | skip       |
| 8.6smtpanddns |                    | {playwrightscreen}                                                    | skip       |

詳細的部分 請看
`\\192.168.101.240\9998掃瞄上傳\軟體處\Wick.HY.Hsu`
> 別動到裡面的東西 (這不是我的檔案!!!) 他是我的reference


| page                 | group     | todo                            | status               |
|:--------------------:|:---------:|:-------------------------------:|:--------------------:|
| ipmitool             |           | test any ipmi                   |                      |
| sensor               |           | ipmitool sdr                    | <'>                  |
| log in webui         |           | networking(mac NCSI )           | <need to ask detail> |
| updata bmc(web ui)   |           | {playwright}                    | pass                 |
| KVM                  |           | {playwright}                    | (not sure)           |
| VBAT                 |           | ipmitool -I lanplus sdr\|g vbat |                      |
| update bios (web ui) |           | {playwright}                    | <'>                  |
| ipmitool stress test |           |                                 | check it             |
| fan sel              |           | ipmitool sel elist \| grep fan  | <'>                  |
| bmc WDT              | WDT       | ipmitool mc watchdog get        | <'>                  |
| bmc WDT              | WDT       | ipmitool raw 0x06 ...           | <'>                  |
| bmc WDT              | WDT       | ipmitool mc reset               | <'>                  |
| bmc WDT              | WDT       | ipmitool mc watchdog off        | <'>                  |
| sel over night test  | overnight | {bash script}                   | <'>                  |
