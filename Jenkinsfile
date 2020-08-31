#!groovy

node {
  stage('Checkout'){
    checkout scm
  }

  stage('Build'){
      sh "docker build -t ${env.HARBOR_ADDRESS}/library/cron-helper:v${env.BUILD_ID} ."
      sh "docker login -u${env.HARBOR_USER} -p${env.HARBOR_PWD} ${env.HARBOR_ADDRESS}"
      sh "docker push ${env.HARBOR_ADDRESS}/library/cron-helper:v${env.BUILD_ID}"
  }
}
