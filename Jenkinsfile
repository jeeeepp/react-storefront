node("node1"){
    checkout scm
    stage("build"){
        sh 'apt-get install -y jekyll'
        sh 'jekyll build'
        sh 'pwd'
    }
}

node("dnd1"){
    withDockerRegistry(credentialsId: 'dockerpwd') {
    // some block
        checkout scm
        def newApp = docker.build "jeepajeep/storefront:${env.BUILD_NUMBER}"
        newApp.push()
    }
}