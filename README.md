# Pentagon-Policy-Editor-
A ChromeOS user policy editor based on Pollen Policy Editor. 


This creates a new directory at etc/opt/chrome/policies/managed, then it loads a file that replaces the policy.json file with a custom one. 
Please have **RootFS** verification disabled or use the following command to disable **RootFS** verification:

 
```bash
sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk0 --remove_rootfs_verification --partitions 2
```

>[!Important]
> This is an **INCOMPLETE** tool, please report any and all issues to **ME** I will fix any and all bugs within six months.


>[!Warning]
>**Using this could get you in trouble with your school or brick your device if used incorrectly I am not liable for any losses or damage, nor are my associates at NonagonFactory nor are the creators of Pollen or Lilac.**

Run the following command as **Root** to run the editor:

```bash
curl -Ls https://raw.githubusercontent.com/StarkMist111960/Pentagon-Policy-Editor-/refs/heads/main/Pentagon.sh | bash 
