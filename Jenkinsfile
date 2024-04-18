pipeline {

    agent any
    stages {
        stage('Packaging/Pushing imagae') {
            steps {
                withDockerRegistry(credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t thecong96/docker-laravel .'
                    sh 'docker push thecong96/docker-laravel'
                }
            }
        }

        // stage('Deploy MySQL to DEV') {
        //     steps {
        //         echo 'Deploying and cleaning'
        //     }
        // }
 
    }
    post {
        // Clean after build
        always {
            sh 'docker compose down --remove-orphans -v'
            sh 'docker compose ps'
        }
    }
}
