pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'construyendo gradle'
                sh './gradle assemble'
            }

        }
           stage('Archive') {
            steps {
                echo 'Archivando aplicación'
                archiveArtifacts artifacts: 'build/libs/*.jar'
            }
            
        }
    }

}