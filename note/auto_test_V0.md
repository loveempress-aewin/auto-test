-------------------------------------------------------------------------------
created	:	Tue Jul  9 14:27:49 CST 2024
date	:	.

-------------------------------------------------------------------------------
this use `./auto_test.sh`
```bash
You current IP address is [192.168.120.61]
Do you want to continue using it?
continue using this IP( press y or n) --->y		### input
[192.168.120.61]
right now version : [1.1.25]
execute how many times ? (input number) : 1		### input
```
![input](../pic/auto_test_V0_ipnut.png)

##  automatically generate  ##
> have two folder (screenshot && resutl)
1. screenshot --> have playwright screenshot png file
2. result  --> ipmitool get infomation

-------------------------------------------------------------------------------
## set evirnment ##
after executing the file, it will automatically generate corresponding files.
here, the main purpose is the UPLOADFILES folder,
as it primarily contains update files.

##  put update file ##
Place the update files you want in UPLOADFILES.
1. only put files with the `ima` suffix
2. Maximum : 2 files

