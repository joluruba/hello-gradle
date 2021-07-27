pipeline {
    agent any
    options {
        ansicolor('xterm')
    }

    stages {
        stage('Build') {
            steps {
                echo 'construyendo gradle'
                whitGrandle {
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