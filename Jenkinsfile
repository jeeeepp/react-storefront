podTemplate(yaml: '''
    apiVersion: v1
    kind: Pod
    spec:
      volumes:
        - name: docker-sock
          hostPath:
            path: /var/run/docker.sock
      containers:
      - name: docker
        image: docker:20
        volumeMounts:
        - mountPath: /var/run/docker.sock
          name: docker-sock
        command:
        - sleep
        args:
        - 99d
        
      - name: jekyll
        image: jekyll/jekyll:4
        command:
        - sleep
        args:
        - 99d
''') {

node(POD_LABEL){
    stage('get container'){
        checkout scm
        container('jekyll'){
            stage("build-project"){
                sh 'whoami'
                sh 'jekyll build .'
            }
        }
        container('docker'){
            stage("push"){
                withDockerRegistry(credentialsId: 'dockerpwd') {
                    checkout scm
                    def newApp = docker.build "jeepajeep/storefront:${env.BUILD_NUMBER}"
                    newApp.push()
                } 
            }
        }
    }
}
}
