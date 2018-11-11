node{
	def app
	
		stage ('Clone Repository'){
			/* Let's make sure we have repo cloned to our workspace */
			checkout scm
		}

		stage ('Build Image'){
			app = docker.build("adiklkrni/node") 
		}

		stage ('Push Image')
		{
			docker.withRegistry('https://registry.hub.docker.com','docker-hub-credentials'){
				app.push("${env.BUILD_NUMBER}")
				app.push("latest")
			}
		}	
}
