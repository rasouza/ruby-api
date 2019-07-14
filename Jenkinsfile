pipeline {
  agent any
  stages {
    stage('Build') {
      agent {
        docker {
          image 'ruby:2.6.2'
        }

      }
      steps {
        sh 'bundle install'
      }
    }
  }
}