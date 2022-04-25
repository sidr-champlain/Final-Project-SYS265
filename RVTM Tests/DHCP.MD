As a privileged user, you will now re-configure networking on W1 and W2 to use dynamic addressing rather than static addresses.

![W1 and W2](https://user-images.githubusercontent.com/71106886/162988161-0f3b60c6-16ad-4a0f-b54b-34303b86ac58.png)

Confirmed by ipconfig /all.  

Note the DHCP server of 172.16.1.10 or 172.16.1.11 should be there, your IP address should be the first IP address in the scope you set earlier.  Your domain name, netmask and gateway should also be set correctly.

![confirm](https://user-images.githubusercontent.com/71106886/162989103-f3df26b2-f6ff-46d6-9a40-3640c54e3556.png)

Run ipconfig /release to remove DHCP Server Address

Then Run ipconfig /renew to obtain a new address

Confirm with ipconfig /all

Turn off one of your DHCP Servers and run the above process again. This should prove that you have a redundant DHCP Server Service.

