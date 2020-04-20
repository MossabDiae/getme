cd
apt update
apt install -y inetutils-ping net-tools tmux nano  
pip install youtube-dl

echo "alias ipe='curl ipinfo.io/ip'
alias nano='nano -c'
alias hg='history | grep'
alias e=exit
cd" >> .bashrc

source ~/.bashrc
echo READY
