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
                sh "./cooLScript.sh"
            }
        }
    }
}