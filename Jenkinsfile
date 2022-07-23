pipeline {
	agent any
	options {
        timeout(time: 10, unit: 'SECONDS') 
    }
	stages {
		stage('Delete the workspace') {
			steps {
				cleanWs()
			}
		}
		stage('Second Stage') {
			steps {
				echo "Second Stage"
				sleep 300
			}
		}
	        stage('Third Stage') {
                        steps {
                                echo "Third Stage"
                        }
                }
	}
}
