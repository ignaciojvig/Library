## Installation

First of all, install PM2 using:
> npm install -g pm2

This will create a default PM2 Home folder in:
> C:\Users\\*username*\\.pm2

We're going to change its location to the folder under this step. So now, create it:
> C:\etc\\.pm2

Then, create a new PM2_HOME variable (at System Level, not User Level), and set its value to:
>C:\etc\\.pm2

Close the open terminal windows or restart Windows and ensure that your variable PM2_HOME has been set properly by running:
>echo %PM2_HOME%

Now, to let PM2 run your NodeJs Script on Windows Boot, we are going to create a service, using NSSM.

Run the your script:
> node yourScript.js

or run directly using PM2
> pm2 start yourScript.js

Then, run:
> pm2 save

Ensure that 'pm2' command is a part of your PATH variable. If you're not sure, use as 'pm2_startup.bat' file, in this directory, defines inside himself.

Then, as administrator, run:
> nssm.exe install MyPM2Service

And set:
> Path: D:\MyNodeScript\...\pm2_startup.bat

> Folder: D:\MyNodeScript...\

> Startup Type: Automatic delayed

> Restart: None

If you want to delete the service, run:

> nssm.exe remove MyPM2Service
