cd ~/
apt update
apt install -y inetutils-ping net-tools nano  
pip install youtube-dl
echo "alias ipe='curl ipinfo.io/ip'
alias nano='nano -c'
alias hg='history | grep'
alias e=exit
cd" >> .bashrc
source ~/.bashrc
wget https://github.com/mossaybo/getme/raw/getme-patch-1/geturl https://github.com/mossaybo/getme/raw/getme-patch-1/sendurl
gpg -d geturl > getme && chmod +x getme
gpg -d sendurl > sendme && chmod +x sendme
cp -l ~/{getme,sendme} /opt/conda/bin/
echo READY
