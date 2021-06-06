pipeline {
  agent {
    label 'ubuntu'
  }

 // tools {nodejs "node"}

  stages {

    stage('Cloning Git') {
      steps {
        git 'https://github.com/ocatak/devsecops_stavanger.git'
      }
    }

    stage('SAST') {
      steps {
        echo '#### sast scan started #########'
        echo '#### sast scan end #############'
      }
    }
  stage('Build-and-Tag') {
      steps {
         sh "docker build . -t fcatak/devsecops_stavanger"
         echo 'build & tagging completed'
      }
    }
     stage('post-to-dockerhub') {
      steps {
        script{
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
          sh "docker push fcatak/devsecops_stavanger"}
        }
      }
    }
 stage('pull-image-server') {
      steps {
        script{
      docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
         sh "docker-compose down"
        sh "docker-compose up -d"}
        }
      }
    }
    stage('DAST') {
      steps {
         echo 'successfully posted to dockerhub'
      }
    }

  }
}
