if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TM-Networks/Auto-Filter-V2t.git /Auto-Filter-V2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-V2
fi
cd /Auto-Filter-V2
pip3 install -U -r requirements.txt
echo "Auto-Filter-V2...."
python3 bot.py
