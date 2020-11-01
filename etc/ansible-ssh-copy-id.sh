for server in `cat server.txt`;  
do  
    sshpass -p "password" ssh-copy-id -i ~/.ssh/id_rsa.pub user@$server  
done
