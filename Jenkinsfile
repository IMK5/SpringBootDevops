node {

   stage('SCM Checkout'){
    	git credentialsId: '3d110c1a-d77f-4653-80c6-293187bca430', url: 'https://github.com/IMK5/SpringBootDevops.git'
   }
   
   stage('Build'){
	  sh 'mvn -B -DskipTests clean package'
  		 }
    try{
      stage('Test') {
                	sh 'mvn test'
		   }
		
	}finally{
		sh 'echo TODO generate junit report next time '
		//junit 'target/surefire-reports/*.xml'
		// junit 'reports/**/*.xml'
		
	}

    stage('BUILD DOCKER IMAGE'){
        echo'imk is image name chosse the name you want'
        echo 'dot . to look for Dockerfile, it exsists in the same directory'
        sh 'docker build -t issaoui/imk:0.0.1   .'
    }
     stage('Push Docker Image To dockerHub'){
             echo'Log to Dockerhub'
             withCredentials([string(credentialsId: 'dockerHubPWD', variable: 'dockerHubPWD')]) 
                 sh "docker login -u issaoui -p ${dockerHubPWD}"
             }
             
       echo'Push image to DockerHub' 
       sh 'docker push issaoui/imk:0.0.1'
   }    
   
   }
   
