pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'  //Dockerfile name
            dir '.'  // The directory where the Dockerfile is located
            additionalBuildArgs ''  // If necessary, additional build arguments can be passed
        }
    }

    stages {
        stage('Build') {
            steps {                
                    echo 'Building de Docker image..'
                    // Here, Jenkins will build the image using the specified Dockerfile                
            }
        }

        stage('Run Container') {
            steps {
                
                    echo 'Executing de Docker container...'
                    // Run the container to serve the web application
                    sh 'docker run -d -p 9191:80 my-web-app'  // We expose the container on port 9191
            }
        }

        stage('Test') {
            steps {
                    echo 'Testing the web application...'
                    
                    sh 'curl http://localhost:9191'
            }
        }
    }

   post {
        always {
            echo 'Pipeline completed.'
        }
        success {
            echo 'Pipeline executed successfully.'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
