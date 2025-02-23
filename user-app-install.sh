echo "Installing user apps for user $USER ..."

# Install miniconda
echo "Installing Miniconda ..."
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh
bash /tmp/miniconda.sh -b -p $HOME/miniconda
rm /tmp/miniconda.sh

# Add conda to .bashrc
echo '# >>> conda initialize >>>' >> ~/.bashrc
echo '# !! Contents within this block are managed by "conda init" !!' >> ~/.bashrc
echo '__conda_setup="$('"$HOME"'/miniconda/bin/conda shell.bash hook 2> /dev/null)"' >> ~/.bashrc
echo 'if [ $? -eq 0 ]; then' >> ~/.bashrc
echo '    eval "$__conda_setup"' >> ~/.bashrc
echo 'else' >> ~/.bashrc
echo '    if [ -f "'"$HOME"'/miniconda/etc/profile.d/conda.sh" ]; then' >> ~/.bashrc
echo '        . "'"$HOME"'/miniconda/etc/profile.d/conda.sh"' >> ~/.bashrc
echo '    else' >> ~/.bashrc
echo '        export PATH="'"$HOME"'/miniconda/bin:$PATH"' >> ~/.bashrc
echo '    fi' >> ~/.bashrc
echo 'fi' >> ~/.bashrc
echo 'unset __conda_setup' >> ~/.bashrc
echo '# <<< conda initialize <<<' >> ~/.bashrc