pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        echo 'checking out scm'
        checkout scm
      }
      post {
        success {
          echo 'checkout scm sucess'
        }
        failure {
          echo 'checkout scm failure'
        }
      }
    }
    
    stage('Build Dockerfile') {
      steps {
        sh "docker build -t jenkinsaws:${env.BUILD_ID} ."
      }
    }

    stage('push to repository') {
      sh "aws help"
    }
  }
}
