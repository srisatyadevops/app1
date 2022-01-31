pipeline {
    agent { dockerfile true}
    environment{
        registry = "srisatyadevops/app1"
        registryCredential = '2f08ea5b-393d-4f28-b054-8cf2bad60257' 
        dockerImage = ''
    }
    stages {
        stage('Build'){
            steps {
                echo "Building Image"
                echo "BUILD ID is  : ${env.BUILD_ID}"
                echo "BUILD TAG is : ${env.BUILD_TAG}"
                echo "NODE NAME is : ${env.NODE_NAME}"
                echo "WORKSPACE is : ${env.WORKSPACE}"
            }
        }
        stage('Test'){
            steps {
                echo "Starting Test"
            }
        }
        stage('Deplpoy'){
            steps {
                echo "Starting Deployment"
            }
        }

        stage('Build Docker Image'){
            steps {
                customImage = docker.build("srisatyadevops/app1:{env.BUILD_TAG}")
            }
        }

        stage('Push image to docker hub'){
            steps {
                script{
                    docker.withRegistry('', 'dockerhub'){
                        customeImage.push()
                        customeImage.push('latest')

                    }
                }

            }
        }
    }

    post {
        always {
            echo "Pipeline was executed"
        }

        success {
            echo "Pipeline was executed sucessfully"
        }

        failure {
            echo "Pipeline failed check what happened"
        }
    }
}

