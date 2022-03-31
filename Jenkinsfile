node("docker"){
    checkout scm
    stage("build"){
        sh 'docker build -t jeepajeep/node-storefront:v1 .'
        sh 'docker push jeepajeep/node-storefront:v1'
    }
}