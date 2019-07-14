podTemplate(label: 'teste', containers: [
  containerTemplate(name: 'ruby', image: 'ruby:2.6.2', ttyEnabled: true, command: 'cat')
]) {
  node('teste') {
    stage('Build') {
      container('ruby') {
        sh 'bundle install'
      }
    }
  }
}

