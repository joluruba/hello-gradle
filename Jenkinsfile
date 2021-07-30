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
                echo 'Desplegando aplicación'
                sh '''
docker-compose up -d'''
                sshagent (credentials: ['08500816-7bda-4bb6-8374-b88b2b052bca']){
                  sh 'git tag MAIN-1.0.${BUILD_NUMBER}'
                  sh 'git push origin MAIN-1.0.${BUILD_NUMBER}'
                }

            }
            
        }
           stage('gitlab') {
            steps {
              echo 'Notify GitLab'
               updateGitlabCommitStatus name: 'build', state: 'pending'
               updateGitlabCommitStatus name: 'build', state: 'success'
          }
       }
 //          stage('gitlabTag') {
 //           steps {
 //             echo 'TagGitLab'
 //              gitlabCommitStatus name: 'verison1'
 //        }
 //     }
    }

}