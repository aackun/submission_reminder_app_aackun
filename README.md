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

#Example Output before the assignment is changed

Assignment: Shell Navigation
Days remaining to submit: 2 days
--------------------------------------------
Checking submissions in ../assets/submissions.txt
Reminder: Chinemerem has not submitted the Shell Navigation assignment!
Reminder: Divine has not submitted the Shell Navigation assignment!


#Example Output after the assignment is changed

$ ./copilot_shell_script.sh
Enter your name (used in the folder name): Aseye
Enter the new assignment name: Git

The assignment has been successfully updated!
Running updated reminder app...
Assignment: Git
Days remaining to submit: 2 days
--------------------------------------------
Checking submissions in ./assets/submissions.txt
Reminder: Chiagoziem has not submitted the Git assignment!

#Author
Manuelle Aseye Ackun (GitHub username: aackun)
Individual Summative Lab
