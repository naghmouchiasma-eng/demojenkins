pipeline {
   agent any 
   environment {
        DOCKER_IMAGE = "asma206/demojenkins-node"
    }
   
   tools {
          nodejs "node"  // nom que tu as donné dans Jenkins
       
    }
    stages { 
        stage('Checkout') {
            steps {
                git branch: 'dev', url: 'https://github.com/naghmouchiasma-eng/demojenkins.git'
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
      
        
    }
}
