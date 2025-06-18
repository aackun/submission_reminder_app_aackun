# submission_reminder_app_aackun
This is a basic application that alerts students about upcoming assignment deadlines.

#Setting up the student environment
1. First, run the setup script
    | ./create_environment.sh
- you'll be prompted to enter your name your name.
- this will create a customised environment: submission_reminder_{yourname}.

2. Next, navigate into the created directory
    | cd submission_reminder_{yourname}

3. Then run the application
    | ./startup.sh

#Changing the assignment name
1. From outside the submission_reminder_{yourname}, run the copilot script
    | ./copilot_shell_script.sh

2. Next, you'll be prompted to enter your name (the one used to create the environment) and a new assignment (eg. Git, Shell Basics, etc.)

3. The script will replace the old assignment in config.env with the new one

4. The script will automatically startup.sh to reflect the new changes

 

#Author
Manuelle Aseye Ackun (GitHub username: aackun)
Individual Summative Lab
