# git clone
echo "start to clone"
git clone https://github.com/ryanjoe02/DevOps.git DevOps
cd DevOps

# venv 설치
echo "start to install venv"
sudo apt-get update && sudo apt install -y python3.8-venv

# venv 구성
echo "start to make venv"
python3 -m venv djenv

# 가상환경 작동
echo "start to activate venv"
source djenv/bin/activate

# pip install
echo "start to install requirements"
pip install -r requirements.txt
