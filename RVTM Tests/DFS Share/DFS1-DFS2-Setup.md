## Prerequisites

There are two new Server Core 2019 VMs in your environment. They need to be properly networked, named, joined to your domain, and viewable via MGMT01. 

Did you know that if you are very careful and use sconfig or powershell to join the domain, you can change the IP, change the hostname and join the domain with only 1 reboot.

Using sconfig, set the IP address and give the machine a hostname. 
- DHCP will set IP Address
- Hostname: DFS1-group and  DFS2-group
Join the domain (group.local)

Network Credentials:

![Network](https://user-images.githubusercontent.com/71106886/163484541-7aaf73af-ba05-458f-aeca-a8027afb939f.PNG)

Confirmed it joined the domain:

![Domain joined](https://user-images.githubusercontent.com/71106886/163484605-f6a43efc-1b94-4786-a797-7f262df15bbf.PNG)

## Makes sure to add DFS1 and DFS2 to MGMT1 

![servers](https://user-images.githubusercontent.com/71106886/163484683-6eaeb310-8b75-485e-9da2-54ab68715538.png)

## File Server Role

Make sure to install the file server role on both DFS1 and DFS2


## Create 2 shared folders

Via Computer Management on DFS1, create a new Share named ‘dfs1’ with a folder path of C:\dfs1 which allows Domain Admins full access & others read-only access.

![dfsshare](https://user-images.githubusercontent.com/71106886/163484793-d8ec518b-00c8-44cc-b6da-afc44b1c5e90.png)

Do the same for DFS2, changing the server and path names as appropriate.


On W1 under your AD named-adm account, you should be able to access the two new shares. 

## Install DFS

Install DFS Management Tools feature as a Remote Server Admin tool for file services on MGMT1. 

Add the two server roles DFS Namespace and DFS Replication for file and storage services on MGMT1. 

Add DFS Replication server role to both DFS1 and DFS2. Open the DFS Management Console under file & storage services on MGMT1.

![file](https://user-images.githubusercontent.com/71106886/163485063-35af23ef-7aa9-4520-8da0-4c62ec316e5f.png)

![dfs management](https://user-images.githubusercontent.com/71106886/163485076-e686693e-c83c-4eb5-80eb-ee9b675463ff.png)

## Configure DFS Namespace

Create a new DFS Namespace on MGMT1, making it a namespace server.

Name the namespace “dfsshare”, editing the share permissions to allow all users read & write to a local path of C:\DFSRoots\dfshare for a domain-based namespace. See screenshot below.

![name](https://user-images.githubusercontent.com/71106886/163485229-ca0c16db-6b83-4c51-9cd0-81f18ebd3e29.png)

Select a domain-based namespace to create. When finished, your domain-based DFS Namespace should look like below:

![confirm](https://user-images.githubusercontent.com/71106886/163485347-8f617794-d788-47c1-90ea-37b21ab726e0.png)

## Creating a folder in the DFS Namespace

Create a new folder in your DFS Namespace called SYS265-Final, and add Folder Targets from DFS1 and DFS2.

Also, you will want to create a replication group to sync the folder targets. 

![namespace](https://user-images.githubusercontent.com/71106886/163485713-7ea2c18b-2709-4e57-9c51-02b57a39a3c5.png)

Make sure to add both DFS1 & DFS2 to the DFS Replication Group:

![group](https://user-images.githubusercontent.com/71106886/163485784-15034568-ac89-4954-9270-14b64d4176b9.png)

![member](https://user-images.githubusercontent.com/71106886/163485908-40dc9e84-63b8-4830-a3ab-55e5e7a38128.png)

Full Mesh with default settings to connect all DFS parties involved.

![mesh](https://user-images.githubusercontent.com/71106886/163485989-1b06d294-a4ed-48ef-848e-181a9049af4b.png)

Check for no errors:

![no error](https://user-images.githubusercontent.com/71106886/163486084-50f1a836-1f43-4b29-843b-9f2d31b6471a.png)




