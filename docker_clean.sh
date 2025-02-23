echo "removing containers ..."
docker container rm my-python-devbox 
echo "removing images ..."
docker image rm my-python-devbox
echo "removing ssh keys ..."
ssh-keygen -R [localhost]:1990