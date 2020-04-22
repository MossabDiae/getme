cd ~/
apt update
apt install -y inetutils-ping net-tools nano aria2 rtorrent
pip install youtube-dl telegram-upload
echo "alias ipe='curl ipinfo.io/ip'
alias nano='nano -c'
alias hg='history | grep'
alias f='find . -type f -iname'
alias youtube-dl-mp3='youtube-dl --prefer-avconv -x --audio-format mp3 --exec \"sendme {}\"'
alias youtube-dl-fire='youtube-dl --external-downloader aria2c --external-downloader-args \"-x 16 -s 16 -k 1M --file-allocation=none\"'
alias e=exit
cd" >> .bashrc
source ~/.bashrc
wget https://github.com/mossaybo/getme/raw/getme-patch-1/geturl https://github.com/mossaybo/getme/raw/getme-patch-1/sendurl
gpg -d geturl > getme && chmod +x getme
gpg -d sendurl > sendme && chmod +x sendme
cp -l ~/{getme,sendme} /opt/conda/bin/
echo READY
bash
