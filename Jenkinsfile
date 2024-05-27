

pipeline {
    environment {
        registry = "daleparkerwinston/demo-spring-app"
        registryCredential = 'Docker Credentials'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Cloning repository') {
            steps {
                git branch: 'develop', credentialsId: 'git', url: "https://github.com/daleparkerwinston/spring-demo.git"
            }
        }
        stage('Build and Push Docker Image...') {
            steps {
                echo 'Building and pushing docker image step.'
                script {
                    // DOCKER HUB

                    /* Build the container image */
                    def dockerImage = docker.build("daleparkerwinston/demo-spring-app:${env.BUILD_ID}")

                    /* Push the container to the docker Hub */
                    dockerImage.push()

                    /* Remove docker image*/
                    sh 'docker rmi -f daleparkerwinston/demo-spring-app:${env.BUILD_ID}'
                }
            }
        }
        stage('Cleaning up') {
            steps{
                sh "docker rmi $registry:$BUILD_NUMBER"
            }
        }
    }
}




