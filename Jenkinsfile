pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'  //Dockerfile name
            dir '.'  // The directory where the Dockerfile is located
            additionalBuildArgs '--tag apasoft/web1'  // If necessary, additional build arguments can be passed
            args '-p 9191:80 -v /home/jenkins/docker-example:/example'
        }
    }

    stages {
        stage('Build') {
            steps {                
                    echo 'Building de Docker image..'
                    // Here, Jenkins will build the image using the specified Dockerfile                
            }
        }
        stage('Test') {
            steps {
                    echo 'Testing the web application...'
                    sh 'echo This is a test file > test.txt'
                    
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
