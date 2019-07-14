pipeline {
  agent any
  stages {
    stage('Build') {
      agent any
      steps {
        git 'https://github.com/rasouza/ruby-api'
        sh 'bundle install'
      }
    }
  }
}