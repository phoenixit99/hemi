#!/bin/bash
echo "                                                                    "
echo "                                                                    "
echo "                                                                    "
echo "                                                                    "
echo "  H   H  EEEEE  N   N  RRRR   Y    Y     N   N  OOO   DDDD   EEEEE  "
echo "  H   H  E      NN  N  R   R    Y Y      NN  N O   O  D   D  E      "
echo "  HHHHH  EEEE   N N N  RRRR      Y       N N N O   O  D   D  EEEE   "
echo "  H   H  E      N  NN  R  R      Y       N  NN O   O  D   D  E      "
echo "  H   H  EEEEE  N   N  R   R     Y       N   N  OOO   DDDD   EEEEE  "
echo "                                                                    "
echo "                                                                    "
echo "                                                                    "

set -e  # Exit script on error

# Setup directory and clean up any previous run
cd $HOME
rm -f cron_hemi.sh
mkdir -p hemid_crontab
cd hemid_crontab

curl -L -o check_hemi.sh https://github.com/phoenixit99/hemi/raw/main/check_hemi.sh

chmod +x check_hemi.sh

curl -L -o auto.sh https://github.com/phoenixit99/hemi/raw/main/auto.sh

chmod +x auto.sh

./auto.sh


echo "Script completed successfully."




