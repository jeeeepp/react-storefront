node("docker"){
    checkout scm
    stage("build"){
        sh 'docker build -t node-storefront:latest .'
    }
}