pipeline {
    agent any

    stages {
        stage('NPM INSTALL') {
            steps {
                bat 'npm install'
            }
        }
        
        stage('PROD') {
            steps {
                bat 'ng build --prod'
            }
        }
        
        stage('TEST') {
            steps {
                bat 'mv dist/Test/* /var/www/html'
            }
        }
    }
}
