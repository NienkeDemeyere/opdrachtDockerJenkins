github repo : https://github.com/NienkeDemeyere/opdrachtDockerJenkins

uitgevoerde commando's:

docker build -t nienkedemeyere/opdrachtjenkins
docker run -p 8080:8080 -p 50000:50000 nienkedemeyere/opdrachtjenkins
docker push nienkedemeyere/opdrachtjenkins