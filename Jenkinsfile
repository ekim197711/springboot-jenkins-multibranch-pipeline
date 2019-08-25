pipeline {
    agent any
    trigger {
        pollSCM('* * * * *')
    }
    tools {
        jdk 'Jdk12'
    }

    stages{
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