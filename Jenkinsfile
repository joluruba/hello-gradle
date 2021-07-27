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
                    slackSend channel: '#jenkins', message: 'Prueba', teamDomain: 'Ln', tokenCredentialId: '3faf711c-ac32-4d7a-95bb-2ab3398cd595'
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