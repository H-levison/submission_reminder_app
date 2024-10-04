#!/bin/bash

#Creating directories and subdirectories
echo "Hello Hii, Welcome to the Assignment Submission Reminder App"
echo "Hold on let me create your needed directories and sub directories..."
mkdir -p submission_reminder_app/{app,modules,assets,config}

#Changing to parent directory
cd submission_reminder_app

#Assigning provided files paths to variables and making them executable
reminder_file="/submission_reminder_app/reminder.sh"
functions_file="/submission_reminder_app/functions.sh"
submissions_file="/submission_reminder_app/submissions.txt"
config_file="/submission_reminder_app/config.env"

#Creating and populating created files
echo "Done! Now creating files and populating them..."
cat $reminder_file > app/reminder.sh && chmod +x app/reminder.sh
cat $functions_file > modules/functions.sh && chmod +x modules/functions.sh
cat $submissions_file > assets/submissions.txt
cat $config_file > config/config.env

#Adding 5 more student records
echo "Done! A sec, let me update submissions.txt file"
cat <<EOL >> assets/submissions.txt
HonourGod, Shell Navigation, not submitted
Samuel, Shell Navigation, not submitted
Azalie, Shell Navigation, submitted
Eke, Shell Navigation, submitted
Timothy, Shell Navigation, not submitted
EOL

#Creating the script to start the reminder app
echo "All Done! You can start you app now"
cat <<EOL >> startup.sh
#!/bin/bash
echo "App Starting..."
./app/reminder.sh
EOL
chmod +x startup.sh
