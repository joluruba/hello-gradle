pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''docker-compose build
docker image tag app:latest hello-gradle:MAIN-1.0.${BUILD_NUMBER}-${GIT_COMMIT}
'''
            }

        }
           stage('Deploy') {
            steps {
                sh '''
docker-compose up -d'''
            }
            
        }
    }

}