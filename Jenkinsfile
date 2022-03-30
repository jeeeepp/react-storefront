node("node1"){
    checkout scm
    stage("build"){
        sh 'npm install'
        sh 'jekyll build'
        sh 'pwd'
    }
}