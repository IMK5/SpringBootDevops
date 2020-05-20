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
   
    stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        
        stage('Test') { 
            steps {
                sh 'mvn test' 
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml' 
                }
            }
        }
   
   }