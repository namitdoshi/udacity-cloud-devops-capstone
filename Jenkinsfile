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
          echo '${USERNAME}'
          echo 'Building Image...'
          sh './run_docker.sh'
          echo 'build complete'
        }
      }
    }
  }
}