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
          // sh 'ls'
          echo 'Building Image...'
          // sh 'chmod +x ./run_docker.sh'
          // sh 'docker images ls'
          // sh 'docker build -t namitdoshi/udacity-devops-capstone:v1'
          script {
            dockerImage = docker.build registry + ":$BUILD_NUMBER"
          }
          echo 'build complete'
        }
      }
    }
    stage('Push to Docker hub') {
      steps {
				withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'docker-creds', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD']]){
					sh '''
						docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
						docker push namitdoshi/udacity-devops-capstone
					'''
				}
      }
    }
  }
}