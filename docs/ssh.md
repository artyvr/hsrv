# SSH Certificate-Based Authentication

### Generate a certificate:

RSA 2048:
```bash
ssh-keygen -t rsa
```

RSA 4096:
```bash
ssh-keygen -t rsa -b 4096
```

ED25519:
```bash
ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519
```

### Copy to remonte host:
```bash
ssh-copy-id username@remote_host
```

### Disable login-password authentication:
```bash
/etc/ssh/sshd_config
```
>PasswordAuthentication no

### Restart ssh service:
```bash
sudo service ssh restart
```
or
```bash
sudo service sshd restart
```
