pipeline {
    agent any

    stages {

        stage('Setup Python Environment') {
            steps {
                sh '''
                    python3 -m venv venv
                    ./venv/bin/python -m pip install --upgrade pip
                    ./venv/bin/python -m pip install -r requirements.txt
                '''
            }
        }

        stage('Run Tests') {
            steps {
                sh './venv/bin/python -m pytest'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t jenkins-python-demo:latest .'
            }
        }
    }
}