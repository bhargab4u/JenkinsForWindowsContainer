"# JenkinsContainer" 

This is a project is to crete a docker file using which Jenkins can be sutup in windows without the need of installing it.

Steps:

1. Checkout the code
2. setup environmen variable "jenkins_home_container_path" for the jenkins home path
3. Docker should be installed on the system.
4. navigate to the project folder using cli.
5. build Docker image using below command
    "docker build -t myjenkins:1.0 ."
6. Check if the docker image has been created successfully using below command
    "docker images"
7. Run dockercompose to create the jenkins instance
    "docker compose -f jenkins-compose.yaml up --detach"
8. Once the container is up jenkins should be available under below link
    http://localhost:9090/


NOTE:
To get the initial jenkins password use the below command once container is up and running
    "docker exec <container_name> cat /var/jenkins_home/secrets/initialAdminPassword"