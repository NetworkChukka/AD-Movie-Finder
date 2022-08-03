if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/NetworkChukka/AD-Movie-Finder.git /AD-Movie-Finder
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AD-Movie-Finder
fi
cd /AD-Movie-Finder
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py