yum install nano -y
yum install net-tools -y
yum install screen -y
yum install jq -y
yum install wget -y
rm -rf status.txt
rm -rf auto.sh
wget https://raw.githubusercontent.com/VuMinhTri-git/anti/main/status.txt
wget https://raw.githubusercontent.com/VuMinhTri-git/anti/main/auto.sh
screen -S API-CLF -dm bash auto.sh
