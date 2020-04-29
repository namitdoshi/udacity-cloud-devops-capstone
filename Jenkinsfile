pipeline {
  environment {
    registry = "namitdoshi/udacity-devops-capstone"
    registryCredential = 'docker-creds'
  }

  agent any
  stages {
    stage('Lint Dockerfile') {
      steps {
        echo 'linting...'
        sh 'hadolint --ignore DL4000 Dockerfile'
        echo 'lint complete'
      }
    }
    stage('Build Image') {
      steps {
        withCredentials([usernamePassword( credentialsId: 'docker-creds', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
          sh 'ls'
          echo 'Building Image...'
          sh 'chmod +x run_docker.sh'
          sh 'run_docker.sh'
          echo 'build complete'
        }
      }
    }
  }
}