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
	      echo "DAST Phase"
	      build "SECURITY-DAST-Arachni"
           }
        }
	  
	stage('IMAGE-VULN-TEST') {
           steps{
	      echo "IMAGE-VULN-TEST Phase"
	      build "IMAGE-SECURITY-SCANNER"
           }
        }
        stage ('Deploy') {
              steps{
			    echo "Deploy Phase"
			}
	    }
	}
}

