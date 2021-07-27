pipeline {
    agent any
    options {
        ansiColor('xterm')
    }

    stages {
        stage('Build') {
            steps {
                echo 'construyendo gradle'
                withGradle {
                    sh './gradlew assemble'
                }
                
            }
            post {
                success {
                    echo 'Archivando por proceso correcto'
                    archiveArtifacts artifacts: 'build/libs/*.jar'
                }
            }

        }
           stage('Test') {
            steps {
                echo 'Testeando..'
             
            }
            
        }        
        
           stage('Deploy') {
            steps {
                echo 'Desplegando...'
            }
            
        }
    }

}