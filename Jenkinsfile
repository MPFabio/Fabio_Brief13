pipeline {
    agent any
  
    parameters
    {
        booleanParam(defaultValue: true, description: '', name: 'sign_check')
        string(name: 'name', defaultValue: "staging-env", description: 'env')
    }
    
    stages {
        
       stage ('Stage-Env') {
            steps {
                script {
                    
                    if (params.name == "staging-env" ||  params.name == "staging-env"){
                    if (params.sign_check == true) {
                       sh 'cd staging-env'
                    }
                    }
               }                
            }
        }
        
        stage ('Prod-Env') {
            steps {
                script {
                    
                    if (params.name == "prod-env" ||  params.name == "prod-env"){
                    if (params.sign_check == true)  {
                        sh 'cd prod-env'
                    }
                    }
                }                
            }
        }
        
     
        
        stage ('Terraform Init') {
            steps {
                script {
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
