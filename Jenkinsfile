node('master') {
    def nodeHome = tool name: 'node-4.4.5', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
    env.PATH = "${nodeHome}/bin:${env.PATH}"

    stage ('Checkout'){
        checkout scm
    }

    stage('Build') {
        //sh "node -v"
        //sh "npm install" 

        //Build Docker image
        def workspace = pwd{}
        echo workspace
        def app = docker.build "kellimohr/helloworld:${BUILD_NUMBER}" 
    }

    stage('Test') {
        sh "npm test"   
    }

    stage('Release') {
        sh "npm start"
    }

    stage('Deploy') {
        input 'Ready to Deploy to Production?'
       
    }

    stage('Cleanup'){

    }
}