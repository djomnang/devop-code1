pipeline {
  agent any
  tools {
     maven 'M2_HOME'
  }
  environment {
    registry = "elise66/devops-pipeline"
    registryCredential = '526f7ebb-fb97-4a45-927c-a7ef899da11d'
}
  stages {
    stage('Build'){
    steps {
      sh 'mvn clean'
      sh 'mvn install'
      sh 'mvn package'
     }
    }
     stage('test'){
    steps {
      echo "test steps"
     sh 'mvn test'
     }
    } 
    stage('deploy'){
    steps {
       script {
        docker.build registry + ":$BUILD_NUMBER"
  
     }
    }  
  }
}
