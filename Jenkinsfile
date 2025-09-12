pipeline {
    agent {
        docker {
            image 'docker:20.10-dind'
            args '--privileged'
        }
    }
    environment {
        DOCKER_IMAGE = "asma206/demojenkins-node"
    }
    stages {
        stage('Check Docker') {
            steps {
                sh 'docker --version'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE:$BUILD_NUMBER .'
            }
        }
    }
}





