pipeline {
    agent any
    triggers {
        pollSCM('* * * * *')
    }
    tools {
        jdk 'Jdk12'
    }

    stages{
        stage('Before prepare the flow!!! We needed to move some files'){
                steps{
                    echo 'This is a stage before the prepareflow!!! '
                }
            }
        stage('Prepare the flow'){
            steps{
                echo 'Hi now we are preparing the flow'
            }
        }

        stage('Test our code'){
            steps{
                sh './gradlew test'
            }
        }

        stage('Build our application and create a jarfile'){
                    steps{
                        sh './gradlew build -x test'
                    }
                }

        stage('Deploy to our test environments'){
            steps{
                echo 'Deploy deploy deploy'
            }
        }
    }
}