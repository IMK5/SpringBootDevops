node {
	agent {
        docker {
            image 'maven:3-alpine' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
   // This is to demo github action	
  // def sonarUrl = 'sonar.host.url=http://172.31.30.136:9000'
   //def mvn = tool (name: 'maven3', type: 'maven') + '/bin/mvn'
   stage('SCM Checkout'){
    // Clone repo
	git branch: 'master', 
	credentialsId: 'github', 
	url: 'https://github.com/IMK5/SpringBootDevops.git'
   }
   
    stage('Mvn Package'){
	   // Build using maven
	   
	   sh "mvn clean install package"
   }
   stage('Deliver') {
            //steps {
	   
                sh ' chmod +x  ./scripts/deliver.sh'
	   sh './scripts/deliver.sh'
            //}
        }
   
   }
