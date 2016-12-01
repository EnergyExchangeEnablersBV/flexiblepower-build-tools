node {
    stage 'Checkout'
    checkout scm

    stage 'Build'
    sh "chmod +x gradlew"
    sh "git submodule init"
    sh "git submodule update"
    sh "mkdir -p cnf/cache"
    sh "./gradlew distribute -x check -x test -x compileTestJava -x generateJavadoc  -DBUILD_NUMBER=${env.BUILD_NUMBER} -DBUILD_TIMESTAMP=${env.BUILD_TIMESTAMP} -DBRANCH_NAME=${env.BRANCH_NAME}"

    stage 'artifactoryPublish'
    sh './gradlew artifactoryPublish'


}
