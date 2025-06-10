pipeline {
  agent any

  stages {
    stage('Terraform Init & Apply') {
      steps {
        sh """
          cd terraform
          terraform init
          terraform apply -auto-approve
        """
      }
    }
  }
}
