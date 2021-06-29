pipeline{
  agent any
  stages {
        stage('SAST') {
           steps{
              build 'SECURITY-SAST-SNYK'
           }
        }

        stage ('Build') {
			steps {
				echo "Build Phase"
		    }
		}
		stage ('Test') {
		    steps{
			     echo "Test Phase"
			 }
		}
	  
	 stage('DAST') {
           steps{
              #build 'SECURITY-DAST-SNYK'
	      echo "DAST Phase"
           }
        }
	  
	stage('IMAGE-VULN-TEST') {
           steps{
              #build 'IMAGE-VULN-TEST'
	      echo "IMAGE-VULN-TEST Phase"
           }
        }
        stage ('Deploy') {
              steps{
			    echo "Deploy Phase"
			}
	    }
	}
}

