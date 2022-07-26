pipeline {
	agent any
	stages {
		stage('Delete the workspace') {
			steps {
				cleanWs()
			}
		}
		stage('Installaing Chef WorkStation') {
			steps {
				script {
					def exists = fileExists '/usr/bin/chef-client'
					if (exists == true) {
						echo "Skipping Chef Workstation Exists"
					} else {
						sh 'sudo apt-get install -y wget tree unzip'
						sh 'wget https://packages.chef.io/files/stable/chef-workstation/20.10.168/ubuntu/20.04/chef-workstation_20.10.168-1_amd64.deb'
						sh 'sudo dpkg -i chef-workstation_20.10.168-1_amd64.deb'
						sh 'sudo chef env --chef-license accept' }
					}
			}
		}
	        stage('Download Cookbook') {
                        steps {
                                git branch: 'main', credentialsId: 'git-repo-creds', url: 'https://github.com/AkashKhurana3092/prac.git'
                        }
		}
		stage('Install Kitchen Docker Gem') {
			steps {
				sh 'sudo apt-get install -y make gcc'
				sh 'sudo chef gem install kitchen-docker'
				sh 'pwd'
				}
			}
                stage('Run Kitchen Destroy') {
                        steps {
                                sh 'cd cookbooks/apache/'
                                sh 'sudo kitchen list'
                                }
                        }
	}
}
