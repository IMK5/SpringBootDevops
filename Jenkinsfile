node {
	
   // This is to demo github action	
  // def sonarUrl = 'sonar.host.url=http://172.31.30.136:9000'
   //def mvn = tool (name: 'maven3', type: 'maven') + '/bin/mvn'
   stage('SCM Checkout'){
    // Clone repo
	git branch: 'master', 
	credentialsId: 'github', 
	url: 'https://github.com/IMK5/SpringBootDevops.git'
   }
   
    stage('Build'){
	   // Build using maven
	   
	   sh 'mvn -B -DskipTests clean package'
   }
	try{
		stage('Test') {
                	sh 'mvn test'
		}
		
	}finally{
		sh 'echo TODO'
		//junit 'target/surefire-reports/*.xml'
		// junit 'reports/**/*.xml'
		
	}
 
   stage('Deliver Or deploy') {
            // If you want to use an external sh file for that:
             //   sh ' chmod +x  ./scripts/deliver.sh'
	      //  sh './scripts/deliver.sh'
            sshagent (credentials: ['tomcat-credential']) {
             sh 'scp -o StrictHostKeyChecking=no target/*.war   admin@127.0.0.1:8080 '
  }
        }
   
   }
