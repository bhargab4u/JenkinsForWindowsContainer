FROM jenkins/jenkins:lts-jdk11

#ENV JENKINS_SLAVE_AGENT_PORT 50001

COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY custom.groovy /usr/share/jenkins/ref/init.groovy.d/custom.groovy

RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt