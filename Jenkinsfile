node("ruby1"){
    checkout scm
    stage("build"){
        sh 'bundle install'
        sh 'jekyll build'
    }
}