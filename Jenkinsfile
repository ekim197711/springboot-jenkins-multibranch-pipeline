pipeline {
    agent any

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
                        gradle build -x test
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