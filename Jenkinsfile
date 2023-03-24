pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'ls'
                sh 'rm -rf node_modules'
                sh 'npm install --cache=".jenkins-npm-cache"'
                // sh 'npm run test-ci'
            }
        }
        stage('Build & Deploy') {
            steps {
                sh 'docker stop wizard-backend_api_1'
                sh 'docker remove wizard-backend_api_1'
                sh 'docker-compose up -d --build'
            }
        }
    }
}