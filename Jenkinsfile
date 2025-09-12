
pipeline {
   agent {
        docker {
            image 'docker:20.10'
            args '--privileged -v /var/lib/docker'
        }
     environment {
         DOCKER_IMAGE = "asma206/demojenkins-node"

    }
    tools {
          nodejs "node"  // nom que tu as donné dans Jenkins
          dockerTool "docker"
           
    }
    
   
    stages {
        stage('Checkout') {
            steps {
                git branch: 'dev', url: 'https://github.com/naghmouchiasma-eng/demojenkins/'
            }
        }
         stage('Install dependencies') {
            steps {
                sh 'npm install'
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
