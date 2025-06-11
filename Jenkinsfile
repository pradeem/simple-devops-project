pipeline {
    agent any

    stages {
        stage('Terraform Apply') {
            steps {
                withAWS(credentials: 'aws-devops-user', region: 'eu-north-1') {
                    sh '''
                        terraform init
                        terraform apply -auto-approve
                    '''
                }
            }
        }
    }
}
