pipeline {
  agent any
  stages {
    stage('Lint Dockerfile') {
      steps {
        echo "linting..."
        sh 'hadolint --ignore DL4000 Dockerfile'
        echo "lint complete"
      }
    }
    stage('Build Image') {
      steps {
        echo "Building Image..."
        
      }
    }
  }
}