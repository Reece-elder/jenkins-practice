pipeline {
    agent any
    stages {
        stage('Pipeline Stages'){
            steps {
                sh "ls"
                sh "pwd"
                // sh "mkdir pipeline_demo"
                sh "cd pipeline_demo"
                sh "pwd" 
                // Steps reset back to the root directory after each command! CD commands do not stay in that location!
            }
        }
        stage('Running a script'){
            steps {
                // sh "./coolScript.sh"
                // Permission will be denied to run this script! Need to give it permission
                sh "ls -a"
                sh "chmod +x coolScript.sh"
                sh "./coolScript.sh"
            }
        }
        stage('Using a containerisation tool'){
            steps {
                sh "sudo ls" 
                // Can't do this as Jenkins runs commands as a Jenkins user with own creds
                // on vm sudo su - jenkins to log into jenkins and attempt to `sudo ls`
                // sudo vi /etc/sudoers add jenkins ALL=(ALL) NOPASSWD: ALL (IMPORTANT TO USE VI FOR THIS)
                // Escape with :qa!
                // Ensure docker is installed on Jenkins machine 
                sh "sudo docker build -t nginxImage ."
                sh "sudo docker run -d -p 80:80 --name nginxDocker nginxImage"
                sh "curl localhost:80"

            }
        }
    }
}