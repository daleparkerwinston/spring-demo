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
        stage('Building image') {
            steps{
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Deploy our image') {
            steps{
                script {
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                    }
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




