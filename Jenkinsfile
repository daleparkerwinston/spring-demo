pipeline {
    agent any
    stages {
        stage('Cloning repository') {
            steps {
                git branch: 'develop', url: 'https://github.com/daleparkerwinston/spring-demo.git'
                withMaven {
                    sh "mvn clean package"
                }
            }
        }
        stage('Next step...') {
            echo 'Next Step'
        }
        stage('last step...') {
            echo 'last Step'
        }
    }
}




