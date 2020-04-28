sudo apt-get update
sudo apt-get upgrade -y
cd ~
curl -O https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
bash Anaconda3-2020.02-Linux-x86_64.sh -b
cd ..
rm -r tmp
chmod 777 .conda
chmod 777 anaconda3
chown -R $USER:$USER anaconda3
chown -R $USER:$USER .conda

export PATH=~/anaconda3/bin:$PATH
echo 'export PATH=~/anaconda3/bin:$PATH' >> .bashrc
conda install pip -y
pip install ranger-fm
conda install -c conda-forge tensorflow -y
conda install -c conda-forge keras -y

pip install --user pyqt5 -y
apt-get install python3-pyqt5 -y  
apt-get install pyqt5-dev-tools -y
apt-get install qttools5-dev-tools -y

echo 'alias tolight="sshpass -p YOUR_PASSWORD_HERE ssh -tt mgerstenberg@gate.ikw.uos.de ssh -tt twilight"' >> .bashrc
echo 'export DISPLAY=:0' >> .bashrc

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
