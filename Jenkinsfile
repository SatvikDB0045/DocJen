pipeline {
    agent any
    environment {
        DOCKER_HUB_USER = 'satvikdb0045'
        IMAGE_NAME = 'myapp'
    }
    stages {
        stage('Build Image') {
            steps {
                // Use 'bat' for Windows environments
                bat "docker build -t ${DOCKER_HUB_USER}/${IMAGE_NAME}:latest ." [cite: 100, 140, 180]
            }
        }
        stage('Push to Hub') {
            steps {
                // Uses the 'dockerhub-creds' ID you created in Jenkins [cite: 196, 202]
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', passwordVariable: 'DB_PASS', usernameVariable: 'DB_USER')]) {
                    bat "echo %DB_PASS% | docker login -u %DB_USER% --password-stdin" [cite: 215]
                    bat "docker push ${DOCKER_HUB_USER}/${IMAGE_NAME}:latest" [cite: 186]
                }
            }
        }
    }
}