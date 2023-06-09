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
                    if (true)
                        sh 'cd prod-env'
                }                
            }
        }
        
        stage ('Staging-Env') {
            steps {
                script {
                   if (false)
                       sh 'cd staging-env'
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
