pipeline {
  podTemplate(containers: [
    containerTemplate(name: 'ruby', image: 'ruby:2.6.2', ttyEnabled: true, command: 'cat')
  ]) {
    stages {
      stage('Build') {
        container('ruby') {
          sh 'bundle install'
        }
      }
    }
  }
}
