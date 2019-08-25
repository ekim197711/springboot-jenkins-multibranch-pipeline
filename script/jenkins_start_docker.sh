containername=myjenkins
docker run --name "$containername" -p "8080:8080" \
-p "50000:50000" jenkins/jenkins:lts