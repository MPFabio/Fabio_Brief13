pipeline {
    agent any
  
    parameters
    {
        booleanParam(defaultValue: true, description: '', name: 'Env')
        string(name: 'name', defaultValue: "", description: 'env')
    }
    
    stages {
        
  
     
        
        stage ('Terraform Init') {
            steps {
                echo "${params.name}"
                script {
                    
                    sh "cd ${params.name} && terraform init"
                }                
            }
        }
    
        stage ('Terraform Plan') {
            steps {
                script {
                    sh "cd ${params.name} && terraform plan"
                }
            }
        }

        stage ('Terraform apply') {
            steps {
                script {
                    sh "cd ${params.name} && terraform apply -auto-approve"
                }    
            }
        } 
    }    
}
