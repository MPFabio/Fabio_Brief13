pipeline {
    agent any
  
    parameters
    {
        booleanParam(defaultValue: true, description: '', name: 'sign_check')
        string(name: 'name', defaultValue: "staging-env", description: 'env')
    }
    
    stages {
        
  
     
        
        stage ('Terraform Init') {
            steps {
                script {
                     echo params.name
                    sh 'cd params.name && terraform init'
                }                
            }
        }
    
        stage ('Terraform Plan') {
            steps {
                script {
                    sh 'cd params.name && terraform plan'
                }
            }
        }

        stage ('Terraform apply') {
            steps {
                script {
                    sh 'cd params.name && terraform apply -auto-approve' 
                }    
            }
        } 
    }    
}
