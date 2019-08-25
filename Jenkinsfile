pipeline {
    agent any
    triggers {
        pollSCM('* * * * *')
    }
    stages {
        stage('Prepare') {
            steps {
                    echo 'Collecting some files'
                    echo 'Prepareing more stuff'
            }
        }
        stage('Build') {
                    steps {
                        sh './gradlew build -x test'
                    }
                }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
        stage('Update our documentation with release') {
            steps {
                echo 'Adding stuff to wiki pages'
            }
        }
    }
}