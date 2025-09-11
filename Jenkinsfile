
pipeline {
    agent any 
     environment {
         DOCKER_IMAGE = "node"
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'dev', url: 'https://github.com/naghmouchiasma-eng/demojenkins/'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh '''
                docker build -t $DOCKER_IMAGE:$BUILD_NUMBER .
                docker tag $DOCKER_IMAGE:$BUILD_NUMBER $DOCKER_IMAGE:latest
                '''
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh '''
                echo "$DOCKERHUB_CREDENTIALS_PSW" | docker login -u "$DOCKERHUB_CREDENTIALS_USR" --password-stdin
                docker push $DOCKER_IMAGE:$BUILD_NUMBER
                docker push $DOCKER_IMAGE:latest
                '''
            }
        }
    }
}
