### log in the servers without passwords

#####     ---this is a notes of setting private and public keys of log in the servers
**logging in the servers with ssh without inputing your passwords**

_______________________________________________________________________
```bash
# type <Enter always from here>, the id_rsa (private key) and id_rsa.pub 
# (public key) would be generated under /home/.ssh
ssh-keygen -t rsa 
ssh-copy-id -i .ssh/id_rsa.pub zelong@mefe5
# you need input your original loging in password
# That's it. Now you can log in all the servers like mefe5, mefe7, mefe41 without passwords...
```

-----------------------------------------------------------------------
