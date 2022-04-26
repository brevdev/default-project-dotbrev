# Brev.dev Project Configuration

Whenever you create or join a project, your project `.brev` directory runs, automating the setup of your project and controlling your machine.

This template is automatically added inside each of your projects created in Brev for you to adjust. For user specific settings, see the [user `.brev` template repository](https://github.com/brevdev/user-dotbrev).

## Repository Contents

If you want to adjust these for more custom setups, here's more information on how this configuration repository is structured.

#### `.brev`
This is our main configuration folder. This is where we store configuration settings everytime you create or join a new project. There is also a user specific dot brev with the same structure, which holds software that you can download for each project.

#### `.brev/setup.sh`
This is the main configuration file that runs on your linux machine, directly after we provision it and before your project is cloned.

You can pre-download software and depedencies that are needed for your service to run (anything that you would globally install on your computer just for this project). The working directory when the file is running is `/home/brev/<PROJECT_FOLDER_NAME>`.

Careful not to place user settings in here (like VSCode extensions or settings), and instead place that in your user `.brev`. This way different versions of your software will not conflict, and others can clone your environment with their user settings.

If you need help debugging your setup file, a log file is auto-created when this file runs. It is located at `./.brev/logs/setup.log`. We highly recommend echo-ing statements into this file when installing new software to know where errors might be located.

#### `.brev/ports.yaml`
Here we can specify which ports you want publicly accessible. Currently by default any connection to your project is password protected. Although this is secure, it prevents testing routes, connecting different services (like a backend and frontend), and publicly sharing your project.

If you ever want to share your project, use this file. Be sure to *never* share your password!

For example, if we run a React app on port 3000, we would want to expose port 3000 so we can use 3000-projectName-user-org.brev.sh as an API root to communicate with our backend.

Example use cases:

- Testing (sending requests through Postman)
- Frontend - backend connection (sending and receiving requests)
- Microservice connections
- Production deploys (post a public url of your website)

#### `.brev/logs`
This is where we keep logs that occur when running the setup script and cloning repositories (such as this one, and your project repository if you are creating or joining a project from git).
