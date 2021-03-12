# Node Todo Infrastructure
Implementation of an infrastructure running a Node.js Todo app

### Prerequisites
- Docker Engine (https://docs.docker.com/engine/install/)
- Node.js
- Docker Compose

### Setup Docker Compose

1. Clone repo & run dependencies
 - `git clone https://github.com/big-meel/node-todo-infrastructure`
 - `cd node-todo-infrastructure`
 - `npm install`

NOTE: The `npm install` command is included should you wish to install dependencies locally for testing purposes.
The Docker Images created in the proceeding step with have all the necessary dependencies and variables containerized, hence the
command is unnecessary.
 
2. Run `docker pull bigmeel94/node-todo` for the pre-built image outlined in
the `docker-compose.yml`, node-tod service. 

Should you need to modify the Dockerfile then you may use `docker build -t image-name .` to create
a custom image and add it to the `node-todo` service image attribute.

3. Run `docker-compose up -d` to test app.
View app on `localhost:8080`


