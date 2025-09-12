pipeline {
   agent any 
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
      
        
    }
}
