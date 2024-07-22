---
created : Tue Feb  6 08:57:45 CST 2024
date    : Mon Jul 15 13:37:59 CST 2024

---
# Consensus
This is an automatic test BMC written using playwright
+ only support `aspeed 2600`
    Because in Aspeed 2600 vs 2500, the WEBUI interface is somewhat different,
    and what can be confirmed now is the differences in updates interface.

The file [`dev_record.md`](./dev_record.md)
or       [`chinese_dev_record.md`](./chinese_dev_record.md)
is all my development process
1. development process
2. problems encountered and solve them

+ The folder `note/` put all my test code or development stuff etc.  📜📄📑📚🧾🗒️📝
+ The folder `pic/ ` put all mp4 mp3 gif png etc. 🎬

[set playwright environment](http://sd20-server.aewin.com:3000/_67u42-XQvisBUMef1VGeQ)

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

# ❗necessary file ( developer  have to do ) ❗
❗❗❗❗❗❗❗🧬🧬🧬🧬🧬
+ Linux
+ only support `aspeed 2600`
+ BMC need have network (have ip)
  + bmc and your device need to be on the same network segment

execute `./auto_created_env.sh`
[detail_monologue](#lovelove_queen_monologue)

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

# auto-test  #
+ Linux
```bash
./auto_test.sh
```
[auto input rule](./note/auto_test_V0.md)

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

# [progress]

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

# Develop area #
[develop area](./note/V0_dev.md)

+ how to use burn BMC repeatedly (only LINUX)

use command
```bash
 ./auto_update_bmc.sh
```
[more update](./note/auto_sop_loop_burn_in_bmc.md)
[](http://sd20-server.aewin.com:3000/7d_073JjTEiIFLKFqkMNsw)


+ if only set ip file(can only do it)
`./auto_ip.sh`

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

## STATISTICS   ##
[the statistics](./note/all_todo_statistics.md)


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

####  lovelove_queen_monologue ####
I have already refactored the entire system. For the previous versions,
I only continued the concept and added the prefix "old."
They are almost forgotten (deprecated). If you want to see the previous versions,
you can take a look. As for why I refactored, it's because they were difficult to maintain.


~~i've noticed that every time i write code, it feels like playing a game where fate and opportunity coexist.~~
~~So when I look back after a month, i often find it hard to understand what i wrote.~~
~~i've humorously named these phases "Newbie Era" and "Victorian Era."~~

**monologue ~= off-screen**
