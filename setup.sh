cd ~/
apt update
apt install -y inetutils-ping net-tools nano aria2 rtorrent libmediainfo0v5 libzen0v5
wget "https://mega.nz/linux/MEGAsync/xUbuntu_16.04/amd64/megacmd-xUbuntu_16.04_amd64.deb"
dpkg -i megacmd-xUbuntu_16.04_amd64.deb
apt-get -y --fix-broken install
pip install youtube-dl telegram-upload beautifulsoup4 mega.py
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
gpg -d geturl > getme || gpg -d geturl > getme && chmod +x getme
gpg -d sendurl > sendme || gpg -d sendurl > sendme && chmod +x sendme
cp -l ~/{getme,sendme} /opt/conda/bin/
touch jpslayer && cp -s ~/jpslayer /opt/conda/bin/ && rm jpslayer
touch tomega && cp -s ~/tomega /opt/conda/bin/ && rm tomega
echo ohayou > littlebox.txt
echo READY
bash
