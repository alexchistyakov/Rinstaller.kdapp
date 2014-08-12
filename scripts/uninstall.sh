#       Setup - DO NOT TOUCH        #
# --------------------------------- #
if [ $# -lt 2 ]
  then
  echo "Please provide a username and log output"
  echo "bash uninstall.sh <user> <log output>"
  echo ""
  exit 0
else
  USER=$1
  OUT=$2
  mkdir -p $OUT
fi

#       Start Coding Here...        #
# --------------------------------- #
touch $OUT/"33-Removing R"
sudo apt-get remove -y r-base

touch $OUT/"66-Removing dependencies"
sudo apt-get autoremove -y --purge r-base

touch $OUT/"100-Finishing Removal"