node("docker"){
    checkout scm
    withCredentials([usernamePassword(credentialsId: 'dockerpwd', passwordVariable: 'password', usernameVariable: 'user')]) {
    // some block
    print (password)
    print (user)
        stage("login"){
            sh 'echo $user'
            sh 'echo $password'
            sh 'docker build -t jeepajeep/storefront:v1 .'
        }
    }
}