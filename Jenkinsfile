pipeline {
  agent any
  stages {
    stage('gitplugin') {
      steps {
        git(url: 'https://github.com/VineetBavniya/myWeb.git', branch: 'thanks')
      }
    }

    stage('Check list') {
      steps {
        sh '''ls -al
'''
      }
    }

  }
}