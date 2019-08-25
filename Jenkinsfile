pipeline {
    agent any
    triggers {
        pollSCM('H/30 * * * *')
    }
    stages {
        stage('Prepare') {
            steps {
                echo 'Collecting some files'
            }
            steps {
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