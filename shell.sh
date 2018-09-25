IMAGE="ludwigprager/spark-scala-sbt"

docker run -ti \
	--rm \
	--name spark-scala-sbt \
	-p 4040:4040 \
	-v $(pwd)/my_project:/my_project \
	${IMAGE}
