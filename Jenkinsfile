pipeline {
    agent any
  
    parameters
    {
        booleanParam(defaultValue: true, description: '', name: 'sign_check')
        string(name: 'deploy', defaultValue: "env", description: '')
    }
    
    stages {
        stage ('Prod-Env') {
            steps {
                script {
                   if (params.name == "Prod-Env" ||  params.name == "def-one"){
                   if (params.sign_check == true) {
                        sh 'cd prod-env/'
                }                
            }
        }
        
        stage ('Stag-Env') {
            steps {
                script {
                   if (params.name == "Stag-Env" ||  params.name == "def-two"){
                   if (params.sign_check == true) {
                       sh 'cd staging-env/'
               }                
            }
        }
        
        stage ('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }                
            }
        }
    
        stage ('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan'
                }
            }
        }

        stage ('Terraform apply') {
            steps {
                script {
                    sh 'terraform apply -auto-approve' 
                }    
            }
        } 
    }    
}
