#!bin/sh
connect=$(netstat -alntp | grep :443 | wc -l)
if [ $connect -lt 60 ]
then
  cat /root/status.txt | grep "block" && bash <(curl -Ls https://raw.githubusercontent.com/VuMinhTri-git/anti/main/block-off.sh) && bash <(curl -Ls https://raw.githubusercontent.com/VuMinhTri-git/anti/main/Captcha-off.sh) && echo "allow" > /root/status.txt && clear && echo -e "ANTI DDOS OFF"
else
  cat /root/status.txt | grep "allow" && bash <(curl -Ls https://raw.githubusercontent.com/VuMinhTri-git/anti/main/block-on.sh) && bash <(curl -Ls https://raw.githubusercontent.com/VuMinhTri-git/anti/main/Captcha-on.sh) && echo "block" > /root/status.txt && clear && echo -e "ANTI DDOS ON"
fi
