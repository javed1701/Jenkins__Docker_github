pipeline {
   agent any
	
   environment {
	DOCKER_IMAGE = 'hello-world-python' //Docker image name
   }

   stages {
	stage('Checkout') {
	   step {
		git branch: 'main', utl: https://github.com/javed1701/Jenkins__Docker_github.git
	   }
    }
	
    stage('Docker Build') {
	steps { 
	   script {
		if(fileExists('Dockerfile')) {
			sh "docker build -t ${env.DOCKER_IMAGE} ."
		} else {
			error "Dockerfile not found in the workspace. Please create one for your Python application."
		}  
	     } 
	 }  
    }

   stage('Docker Run (Optional)') {
		steps {
			sh "docker run --rm ${env.DOCKER_IMAGE}:
		}  
          }   
    }

    post {
         success {
                  echo 'Success' 
            }
         failure {
                   echo 'Failure' 
           }
       } 
  }
