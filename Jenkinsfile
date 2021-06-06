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
        stage ('Deploy') {
              steps{
			    echo "Deploy Phase"
			}
	    }
	}
}

