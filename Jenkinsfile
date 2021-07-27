pipeline {
    agent any
    options {
        ansiColor('xterm')
    }

    stages {
        stage('Build') {
            steps {
                echo 'construyendo gradle'
                withGrandle {
                    sh './gradle assemble'
                }
                
            }
            post {
                success {
                    archiveArtifacts artifacts: 'build/libs/*.jar'
                }
            }

        }
           stage('Test') {
            steps {
                echo 'Testeando'
             
            }
            
        }        
        
           stage('Deploy') {
            steps {
                echo 'Desplegando...'
            }
            
        }
    }

}