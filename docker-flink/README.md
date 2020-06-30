## README

### Docker compose start env.
```sh
# flink cluster run
docker-compose -f docker-compose-all.yml up -d

# Scale the cluster up or down to N TaskManagers:

docker-compose -f docker-compose-all.yml scale taskmanager=<N>
```

### maven start a project

```sh
mvn archetype:generate \
  -DarchetypeGroupId=org.apache.flink \
  -DarchetypeArtifactId=flink-quickstart-java \
  -DarchetypeVersion=${1:-1.7.0} \
  -DgroupId=org.darebeat.flink \
  -DartifactId=flink \
  -Dversion=0.1 \
  -Dpackage=org.darebeat.flink \
  -DinteractiveMode=false
```
