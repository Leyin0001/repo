def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label, cloud: 'kubernetes') {
	node(label){
		checkout scm
		docker.withServer('tcp://172.16.23.243:2375'){
			docker.withRegistry('registry.cn-hangzhou.aliyuncs.com','a9541a56-7ab2-41ec-97f6-000bd7850976'){
				def custemImage = docker.build("test001:${env.build_id}")
				custemImage.push("${env.build_id}")
			}
		}
	}
}
