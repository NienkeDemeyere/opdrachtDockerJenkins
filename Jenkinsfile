pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'this is the build stage'
                node('Node19.2'){
                    sh 'npm init -y'
                    sh 'npm install'
                }
            }
        }
        stage('Test') {
            steps {
                echo 'this is the test stage'
            }
        }
        stage ('Deploy') {
            steps {
                echo 'this is the deployment stage'
            }
        }
    }
}