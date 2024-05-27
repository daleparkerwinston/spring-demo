pipeline {
    agent any
    stages {
        stage('Cloning repository') {
            steps {
                git branch: 'develop', credentialsId: 'git', url: "https://github.com/daleparkerwinston/spring-demo.git"
            }
        }
        stage('Build artifact') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}




