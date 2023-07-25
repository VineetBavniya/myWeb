pipeline {
  agent any
  stages {
    stage('gitplugin') {
      steps {
        git(url: 'https://github.com/VineetBavniya/myWeb.git', branch: 'thanks')
      }
    }

    stage('Check list') {
      parallel {
        stage('Check list') {
          steps {
            sh '''ls -al
'''
          }
        }

        stage('say Hello') {
          steps {
            sh 'echo "Hello Jenkins"'
          }
        }

      }
    }

    stage('Build') {
      steps {
        sh 'docker build -t web .'
      }
    }

    stage('Kube') {
      steps {
        sh 'kubectl get node -o wide'
      }
    }

  }
}