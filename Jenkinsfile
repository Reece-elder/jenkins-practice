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
            }
        }
    }
}