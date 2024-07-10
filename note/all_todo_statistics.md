# BBU  #

| item name                   | y/n | new   |
|:---------------------------:|:---:|-------|
| vga                         | X   |       |
| com1                        | X   |       |
| com2                        | X   |       |
| buzzer function             | X   | 1.0.8 |
| ipmitool                    | V   |       |
| sensor value are reasonable | V   |       |
| log in webui                | X   |       |
| remote/manual power control | X   |       |
| bmc i2c bus                 | X   |       |
| bmc WDT                     | V   |       |
| update bmc WEBUI            | V   |       |
| update bmc(yafu)            | X   |       |
| KVM                         | X   |       |
| SOL                         | X   |       |
| eMMC                        | X   | new   |
| VBAT                        | V   |       |
| update bios(webui)          | V   |       |
| smart fan                   | X   |       |
| store mac address           | X   |       |
| LCM                         | X   | new   |
| I2C bus recovery            | X   |       |
| slots verification          | X   |       |
| ipmitool stress test        | V   |       |
| fan sel                     | V   |       |
| 1 fan loses function        | X   | 1.0.8 |
| 2 fans malfunction          | X   | new   |
| power policy                | X   | new   |
| system Isolation Test       | X   | 1.0.8 |
| sel over night test         | V   |       |
| bmc remote media            | X   |       |

# sd10 #

| item name                                   | y/n | group                    | merge                                   |
|:-------------------------------------------:|:---:|:------------------------:|:---------------------------------------:|
| check samba status                          | X   | remotely install os      |                                         |
| ls *.iso & ip addr \|grep 199 & pwd &whoami | X   | remote install os        |                                         |
| screenshot remote webui                     | V   | remotely install os      |                                         |
| screenshot remotely webui                   | V   | remotely install os      |                                         |
| screenshot remotely webui                   | V   | remotely install os      |                                         |
| bios setup prompt timeout SS                | X   | remotely install os      |                                         |
| os installation will start                  | X   | remotely installation os |                                         |
| window run \\\\192.168.x.8                  | X   | remotely installation os |                                         |
| up into interface                           | X   | remotely install os      |                                         |
| login enter network credentials             | X   | remotely install os      |                                         |
| copying 1 item ..                           | X   | remotely install os      |                                         |
| bios advanced SS                            | X   | 1-flash\_image           |                                         |
| bios server mgmt                            | X   | 1-flash\_image           |                                         |
| ipmitool lan print 1                        | V   | 1-flash\_image           |                                         |
| set mac in u-boot                           | X   | 1-flash\_image           |                                         |
| check ipmi status under bios                | X   | 2-BIOS                   |                                         |
| console redirection setting                 | X   | 2-BIOS                   |                                         |
| SOL switch                                  | X   | 2-BIOS                   |                                         |
| static ip setting static ip                 | X   | 2-BIOS                   |                                         |
| ipmi information : check ipmi info under os | V   | 3-OS                     |                                         |
| static ip : setting static ip               | X   | 3-OS                     |                                         |
| ipmi user list                              | V   | 3-OS                     |                                         |
| set ip address for ipmi and user            | X   | 3-OS                     |                                         |
| set user name and password                  | X   | 3-OS                     |                                         |
| sensor detail display nomal                 | V   | 4-5-webui\_part1         |                                         |
| ipmitool sdr                                | V   | 4-5-webui\_part1         | TEST\_RECORD/Sensors/sdr.txt            |
| all sensor display normal                   | V   | 6-sensor                 |                                         |
| ipmitool sensor                             | V   | 6-sensor                 |                                         |
| ipmitool sdr list                           | V   | 6-sensor                 |                                         |
| ipmitool sdr type fan                       | V   | 6-sensor                 | TEST\_RECORD/Sensors/FAN.txt            |
| ipmitool sdr type temp                      | V   | 6-sensor                 | TEST\_RECORD/Sensors/TEMPERATURE.txt    |
| ipmitool sdr type voltage                   | V   | 6-sensor                 | TEST\_RECORD/Sensors/VOLTAGE.txt        |
| ipmitool sdr \| g PSU                       | V   | 6-sensor                 | TEST\_RECORD/Sensors/PSU.txt            |
| ipmitool sdr \| g -i fan                    | V   | 6-sensor                 |                                         |
| ipmitool screenshot in circle sensor        | V   | 6-sensor                 |                                         |
| ipmitool sdr \| g -i psu                    | V   | 6-sensor                 |                                         |
| after re-plug the PSU 1 cable               | V   | 6-sensor                 |                                         |
| log event webui                             | V   | 7-log and report         |                                         |
| display normal (download file by webui)     | V   | 7-log and report         |                                         |
| ipmitool sel clear                          | V   | 7-log and report         |                                         |
| system log webui                            | V   | 7-log and report         |                                         |
| audit log webui                             | V   | 7-log and report         |                                         |
| video log webui                             | V   | 7-log and report         |                                         |
| ipmitool sel elist                          | V   | 7-SEL                    | TEST\_RECORD/Log\_Reports/LOG.txt       |
| ipmitool sel save (file name)               | V   | 7-SEL                    |                                         |
| ipmitool sel clear                          | V   | 7-SEL                    |                                         |
| ipmitool sel clear && sel elist             | V   | 7-SEL                    | TEST\_RECORD/Log\_Reports/CLEAR-LOG.txt |
| ipmitool event 1                            | V   | 7-SEL                    |                                         |
| ipmitool script loop event 1                | V   | 7-SEL                    |                                         |
| event log file                              | V   | 7-SEL                    |                                         |
| ipmi sel size (ipmitool sel -v info)        | V   | 7-SEL                    |                                         |
| ipmitool sel clear && elist                 | V   | 7-SEL                    |                                         |
| and reboot (use WTD)                        | V   | 7-SEL                    |                                         |
| check sel log after warm boot               | V   | 7-SEL                    |                                         |
| check the sel for cool boot                 | X   | 7-SEL                    |                                         |
| setting screenshot                          | V   | 8-setting                |                                         |
| check your interface ip                     | X   | 8.6smtp                  |                                         |
| dns and smtp configration                   | X   | 8.6smtp (bound)          |                                         |
| smtp config webui                           | V   | 8.6smtp                  |                                         |
| user mg interface on ipmi (webui)           | V   | 8.6smtp                  |                                         |
| event filter lan                            | V   | 8.6smtp                  |                                         |
| following changes and                       | V   | 8.6smtp                  |                                         |
| system firewall                             | X   | 8.11system firewall      |                                         |
| remote control (web)                        | V   | 9-13webui-part2          |                                         |
| kvm                                         | V   | 9-13webui-part2          |                                         |
| image redirection                           | V   | 9-13webui-part2          |                                         |
| power control                               | ?   | 9-13webui-part2          |                                         |
| maintenance                                 | V   | 9-13webui-part2          |                                         |
| backup configuration                        | V   | 9-13webui-part2          |                                         |
| bmc recovey                                 | V   | 9-13webui-part2          |                                         |
| firewahre image location                    | V   | 9-13webui-part2          |                                         |
| firmwhare infomation                        | V   | 9-13webui-part2          |                                         |
| firmwware update                            | V   | 9-13webui-part2          |                                         |
| preserve configuration                      | V   | 9-13webui-part2          |                                         |
| restore configuration                       | V   | 9-13webui-part2          |                                         |
| restore factory default                     | V   | 9-13webui-part2          |                                         |
| system administrator                        | V   | 9-13webui-part2          |                                         |
| sign out                                    | V   | 9-13webui-part2          |                                         |
| aptio setup ami                             | X   | 14,15-SOL                |                                         |
| under OS ipmitool lan print 1               | V   | 14,15-SOL                |                                         |
| sol choose screenshot                       | V   | 14,15-SOL                |                                         |
| sol check                                   | X   | 9-13webui-part2          |                                         |
| 17 nmap                                     | X   | 17-ssecurity             |                                         |
| 17 nessus                                   | X   | 17-security              |                                         |
| 17 ssh                                      | X   | 17-security              |                                         |
| visual syslog                               | X   | visual-syslog server     |                                         |


BBU items : 23
sd10 items : 86
all items : 109


BBU items : 27
sd10 items : 86
all items : 113

-------------------------------------------------------------------------------

BBU : 10 V 13 x --> 43%

SD10 : 58 V 28 X --> 68%

all : 69 V 41 X  -->62%

###### change_0 ######

Fri May 31 13:58:06 CST 2024
// KVM --> X

BBU :  9 V 14 x --> 39%

all : 67 V 42 X  -->0.614678899083

###### WEBUI_bios ######
Fri Jun 14 14:59:02 CST 2024
// update BIOS (WEB UI --> didnt check) temporary remove

BBU : 8 V 15 x --> 34.7%

SD10 : 58 V 28 X --> 68%

all : 66 V 43 x --> 0.605504587156

###### update_BBU_version ######

Fri Jun 14 15:56:08 CST 2024
// because latest version (V1.0.6).

BBU : 8V 19 x --> 0.296296296296

all : 66 V 47 x --> 0.58407079646

###### BBU_1.0.8 ######
Mon Jul  8 17:04:39 CST 2024
BBU : 8 V 22 X --> 0.266666666667
all : 66 V 50 X --> 0.568965517241


-------------------------------------------------------------------------------
| BBU         | SD10         | ALL            | note                          |
|:-----------:|:------------:|:--------------:|:-----------------------------:|
| 10/23(43%)  | 58 / 86(67%) | 68 / 109(62%)  |                               |
| 9 / 23(39%) |              | 67 / 109 (61%) | [detail](#change_0)           |
| 8 / 23(34%) |              | 66 / 109 (61%) | [detail](#WEBUI_bios)         |
| 8 / 27(30%) |              | 66 / 113 (58%) | [detail](#update_BBU_version) |
| 8 / 30(27%) |              | 66 / 116(57%)  | [detail](#BBU_1.0.8)          |
