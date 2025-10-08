pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'develop', url: 'https://github.com/aniruddha-it/django-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t django-todo:01 .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker stop django-todo || true
                docker rm django-todo || true
                docker run -d --name django-todo -p 8001:8001 django-todo:01
                '''
            }
        }
        
        stage('user input'){
            input{
                message"stop and delete containers"
                ok"yes"
            }
            steps{
                sh '''
                docker stop django-todo || true
                docker rm django-todo || true
                docker rmi django-todo
                '''
            }
        }
    }

    post {
        success {
            echo 'Deployment successful! Visit your app'
        }
        failure {
            echo 'Build or deployment failed'
        }
    }
}

