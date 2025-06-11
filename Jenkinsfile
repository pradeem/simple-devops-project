pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/pradeem/simple-devops-project.git'
      }
    }

    stage('Terraform Apply') {
      when {
        anyOf {
          changeset pattern: '**/Jenkinsfile'
          changeset pattern: 'terraform/**'
        }
      }
      steps {
        withCredentials([usernamePassword(credentialsId: 'aws-creds', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
          sh '''
            cd terraform
            terraform init
            terraform apply -auto-approve
          '''
        }
      }
    }
  }
}
