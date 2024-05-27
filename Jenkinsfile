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
                withMaven {
                    sh "mvn clean package"
                }
            }
        }
        stage('Next step') {
            echo 'testing the next step'
            steps {
                sh 'echo testing'
            }
        }
    }
}




