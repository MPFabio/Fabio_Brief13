pipeline {
    agent any
  
    stages {
        stage ('Prod-Env') {
            steps {
                script {
                    sh 'cd prod-env'
                }                
            }
        }
        
        #stages {
        #stage ('Staging-Env') {
            #steps {
                #script {
                    #sh 'cd staging-env'
                #}                
            #}
        #}
        
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
