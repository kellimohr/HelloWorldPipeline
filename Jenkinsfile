node('master') {
    def nodeHome = tool name: 'node-4.4.5', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
    env.PATH = "${nodeHome}/bin:${env.PATH}"

    stage 'Checkout'

        checkout scm

    stage('Build') {
        sh "node -v"
        sh "npm install"
       
    }
    stage('Test') {
       
    }
    stage('Release') {
       
    }
    stage('Deploy') {
       
    }
}