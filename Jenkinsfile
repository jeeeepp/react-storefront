node("node1"){
    checkout scm
    stage("build"){
        sh 'apt-get install -y jekyll'
        sh 'jekyll build'
        sh 'pwd'
    }
}