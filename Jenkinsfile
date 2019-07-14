podTemplate(label: 'ruby', containers: [
  containerTemplate(name: 'ruby', image: 'ruby:2.6.2', ttyEnabled: true, command: 'cat')
]) {
  node('ruby') {
    stage('Build') {
      container('ruby') {
        checkout scm
        sh 'bundle install'
      }
    }
  }
}

