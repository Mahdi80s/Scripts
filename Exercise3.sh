#!/bin/bash

ping -c 2 $1 >> /dev/null

if [ $? -eq 0 ]; then
        #sshpass is not secure
    #apt install -y sshpass
    #apt install -y expect

    /usr/bin/expect << EOF
    spawn sshpass -p $3 scp /etc/passwd $2@$1:~
    expect "(yes/no)?"
    send "yes\r"
    expect eof
EOF
    echo "The file was sent successfully"
else
    echo "Server is not reachable"
fi
