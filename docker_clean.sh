echo "removing containers ..."
docker container rm ggmm-sshd 
echo "removing images ..."
docker image rm ubuntu-sshd-ubuntu-sshd
echo "removing ssh keys ..."
ssh-keygen -R [localhost]:4422