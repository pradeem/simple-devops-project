pipeline {
    agent any

    environment {
        AWS_REGION = 'eu-north-1'
    }

    stages {
        stage('Terraform Apply') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'aws-devops-user', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh '''
                        terraform init
                        terraform apply -auto-approve
                    '''
                }
            }
        }
    }
}

