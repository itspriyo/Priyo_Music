echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/itspriyo/Priyo_Music /Priyo_Music
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/itspriyo/Priyo_Music -b $BRANCH /Priyo_Music
fi
cd /Music_Player
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
