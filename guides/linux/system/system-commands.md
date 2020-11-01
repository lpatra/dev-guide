[Index][home] > Linux > System Commands

# System Commands


## Hardware Resources

---

### Memory
#### Memory Usage
```bash
free -h

# example
> free -h
             total       used       free     shared    buffers     cached
Mem:          480G        68G       412G       172K       489M        61G
-/+ buffers/cache:       6.4G       473G
Swap:           0B         0B         0B
```

---

### Disk
#### Disk Usage
```bash
df -h

# example
> df -h
Filesystem            Size  Used Avail Use% Mounted on
/dev/xvda1            9.8G  2.1G  7.7G  22% /
tmpfs                 241G     0  241G   0% /dev/shm
/dev/xvdj            1008G  5.0G  952G   1% /local
/dev/md0              5.2T  231G  5.0T   5% /local_1
```

#### Disk RAID info
```bash
cat /proc/mdstat

# example
> cat /proc/mdstat
Personalities : [raid10]
md0 : active raid10 nvme7n1[7](S) nvme6n1[6](S) nvme5n1[5] nvme4n1[4] nvme3n1[3] nvme2n1[2] nvme1n1[1] nvme0n1[0]
      5566012416 blocks super 1.2 512K chunks 2 near-copies [6/6] [UUUUUU]

unused devices: <none>
```


---

## Network Commands
- resolve name from dns server
```bash
dig DNS_NAME +short
```

- resolve ip from dns name
```bash
nslookup IP_ADDRESS
```


---

## Shell Commands

- for loop one liner
```bash
for i in {1..100}; do; echo hello; done;
```



[home]: /dev-guide
