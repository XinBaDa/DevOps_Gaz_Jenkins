pipeline {
    agent any

    stages {
        stage('Build&Deploy') {
            steps {
                sh 'docker compose -d up'
            }
        }
    }
}
