#!/bin/bash
SCRIPT_PATH="$HOME/hemid_crontab/check_hemi.sh"
if [ ! -f "$SCRIPT_PATH" ]; then
    echo -e "#!/bin/bash\necho \"This is my script running!\" >> $HOME/rbo_crontab/output.log" > "$SCRIPT_PATH"
    chmod +x "$SCRIPT_PATH"
fi

# Add the cron job every hour
CRON_JOB="0 * * * * $SCRIPT_PATH"
(crontab -l; echo "$CRON_JOB") | crontab -
echo "Cron job added: $CRON_JOB"
