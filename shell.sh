IMAGE="spark-scala-sbt"

docker run -ti \
	--rm \
	--name spark-scala-sbt \
	-p 4040:4040 \
	-v $(pwd)/playground:/playground \
        -v $(pwd)/ivy2_cache:/root/.ivy2 \
	${IMAGE}
