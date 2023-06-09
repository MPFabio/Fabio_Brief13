pipeline {
    agent any
  
    parameters
    {
        booleanParam(defaultValue: true, description: '', name: 'Deploy')
        string(name: 'Environment', defaultValue: "", description: '')
        choice(choices: ['apply', 'destroy'], name: 'Action')
    }
    
    stages {
        
  
     
        
        stage ('Terraform Init') {
            steps {
                echo "${params.Environment}"
                script {
                    sh "cd ${params.Environment} && terraform init"
                }                
            }
        }
    
        stage ('Terraform Plan') {
            steps {
                script {
                    sh "cd ${params.Environment} && terraform plan"
                }
            }
        }

        stage ('Terraform apply') {
            steps {
                script {
                    sh "cd ${params.Environment} && terraform ${params.Action} -auto-approve"
                }    
            }
        } 
    }    
}
