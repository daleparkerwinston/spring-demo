
pipeline {
    agent any
    stages {
        stage('Cloning repository') {
            steps {
//                git branch: 'develop', url: 'https://github.com/daleparkerwinston/spring-demo.git'
                sh 'git clone https://github.com/daleparkerwinston/spring-demo.git'
                cd 'spring-demo'
                sh 'git checkout develop'
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




