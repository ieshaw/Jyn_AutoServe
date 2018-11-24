# Jyn_AutoServe
## Prompt

Using a containerization or virtualization tool, create an environment that contains a git server and a web server. The git server should have a user “admin” with a repo “admin.” Script files will be pushed to this repo. When a user accesses the web server, it should run the scripts in admin/admin and display the results as the root webpage.

### Example workflow:

“ps aux” → ps.sh → git push → web server runs ps.sh and displays at localhost:443

### Requirements

- Serve all web traffic over SSL using a self-signed cert.
- Web server should be served over 443, git UI (if there is one) over 4443, and git SSH over 22
- Set any passwords to “empiredidnothingwrong”
- Submit via a git repo all configuration, scripts, etc. that are required to stand up the environment.
- Everything you submit must be scripted - binaries or pre-made containers/VMs will not be accepted
- There must be a README with a list of pre-required software installs. This must be all encompassing.
- Testing: In the root of the project there must be a 'bin' dir which contain a few scripts:
  - install - builds the system and makes it ready to be used
  -  start - starts the system
  - clone - performs the git clone and prompts for a password. Also creates ‘admin’ directory in the root folder of the project.
  -  push - asks for a comment and pushes admin dir contents
  -  render - opens an app or prints contents of web page
  -  stop - stops the system
  -  clean - destroys resources used

### Last Notes

You may use existing 3rd party projects for inspiration / example. However, we will not accept wholesale copying without customization or work done to meet the problem criteria. If you choose to start from a kitchen sink solution and pare down, you must remove anything that is not needed to meet problem criteria.

**Please include screenshots of your solution in action in the README**

## Assumptions

- Do not re-write the git protocol.
- Docker is acceptable as a containerization protocol
- Docker Container of Ubuntu acceptable to use
- TODO: want project in home directory of server

## Pre-Required Software Installs

Docker (if no Docker, assumes Ubuntu and installs Docker)

## Helpful Links

[For Setting Up Git and GitLab](https://www.linux.com/learn/how-run-your-own-git-server)

[For Setting up Docker](https://docs.docker.com/get-started/)

[For Setting up SSL](https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-nginx-in-ubuntu-16-04)

## Final Note

This process could be easily be done by simply installing Docker and using the [Gitlab image](https://hub.docker.com/r/gitlab/gitlab-ce/); but I recognize that defeats the purpose of this exercise.