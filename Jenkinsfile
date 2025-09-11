pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World hellooooo*****'
            }
        }
        stage('Checkout') {
            steps {
                git branch: 'dev', url: 'https://github.com/naghmouchiasma-eng/demojenkins/'
            }
        }
   
    }
}