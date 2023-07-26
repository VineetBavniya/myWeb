pipeline {
  agent any
  stages {
    stage('CheckOut') {
      steps {
        git(url: 'https://github.com/VineetBavniya/myWeb.git', branch: 'thanks')
      }
    }

    stage('Check items') {
      steps {
        sh 'ls -la'
      }
    }

    stage('Build') {
      steps {
        sh 'docker build -t raw101/helloweb .'
      }
    }

    stage('Log in dockerhub') {
      environment {
        DOCKERHUB_USER = 'raw101'
        DOCKERHUB_PASSWORD = 'kyaptakya'
      }
      steps {
        sh 'docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD'
      }
    }

    stage('Push Image') {
      steps {
        sh 'docker push raw101/helloweb:latest'
      }
    }

  }
}