#!/bin/bash

# Send notifications to Telegram Bot
# telegram_bot_notify.sh "your messege"

MESSAGE_TEXT="$1"

escape() {
    echo "$1" | sed 's/&/%26/g; s/ /%20/g; s/\n/%0A/g'
}

ESCAPED_MESSAGE_TEXT=$(escape "$MESSAGE_TEXT")
MESSAGE="$ESCAPED_MESSAGE_TEXT"

curl -S -X POST -d chat_id="$TELEGRAM_BOT_CHAT_ID" -d text="$MESSAGE" -d parse_mode="HTML" "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"