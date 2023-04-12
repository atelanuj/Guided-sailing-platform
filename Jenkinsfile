pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [localBranch('main')], userRemoteConfigs: [[url: 'https://github.com/atelanuj/Terraform_VPC_Anuj.git']])
            }
        }
        stage('terraform init'){
            steps {
                sh 'terraform init -reconfigure'
            }
        }
        stage('terraform validate'){
            steps{
                sh 'terraform validate'
            }
        }
        stage('terraform plan'){
            steps{
                sh 'terraform plan'
            }
        }
        stage('terraform' $action){
            steps{
                echo "Terraform action is --> $action"
                sh 'terraform $action --auto-approve'
            }
        }
    }
}
