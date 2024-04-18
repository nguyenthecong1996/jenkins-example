pipeline {

    agent any
    stages {
        stage('Packaging/Pushing imagae') {
            steps {
                echo "hello"
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
            cleanWs()
        }
    }
}
