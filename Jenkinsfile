pipeline {
    agent any
    stages {
        stage('Cloning repository') {
            steps {
                git branch: 'develop', url: 'https://github.com/daleparkerwinston/spring-demo.git'
            }
        }
        stage('Maven build') {
            steps {
                sh 'echo testing sh'
//                withMaven {
//                    sh "mvn clean package"
//                }
            }
        }
    }
}




