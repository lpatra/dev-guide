[Index][home] > Devops > Vagrant

# Vagrant

### Basic commands
```bash
# start up
vagrant up

# shut down
vagrant halt

# vagrant reload config
vagrant reload

# vagrant remove the vm and all its resources
vagrant destroy 
```

---

### Important Plugins
```bash
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-disksize
```


### x11 forwarding
- the following config news to be set
```ruby
config.ssh.forward_x11 = true
```
- check the vagrant ssh config
```bash
vagrant ssh-config
```
- based find the key location from the ssh config result ssh as follows
```bash
ssh -X -p 2222 -i IDENTITY_FILE_PATH vagrant@localhost xclock
```


[home]: /dev-guide
