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
        echo ${WORK_SPACE}
        def app = docker.build "kellimohr/helloworld:${BUILD_NUMBER} ${WORK_SPACE}/helloworld" 
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