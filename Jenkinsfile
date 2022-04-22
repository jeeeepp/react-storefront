podTemplate(yaml: '''
    apiVersion: v1
    kind: Pod
    spec:
      containers:
      - name: node
        image: node:18
        command:
        - sleep
        args:
        - infinity
''') {

node(POD_LABEL){
    checkout scm
    stage("build"){
        sh 'apt-get install -y jekyll'
        sh 'jekyll build'
        sh 'pwd'
    }
}

// node("dnd1"){
//     withDockerRegistry(credentialsId: 'dockerpwd') {
//     // some block
//         checkout scm
//         def newApp = docker.build "jeepajeep/storefront:${env.BUILD_NUMBER}"
//         newApp.push()
//     }
// }

}