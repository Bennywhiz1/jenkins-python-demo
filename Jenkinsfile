pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/Bennywhiz1/jenkins-python-demo.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'python3 -m pip install -r requirements.txt'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'python3 -m pytest'
            }
        }
    }
}