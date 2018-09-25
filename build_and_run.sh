IMAGE="spark-scala-sbt:2"

BUILD="sbt package"
RUN="\
/spark-2.2.0-bin-hadoop2.7/bin/spark-submit \
--class "SimpleApp" \
--master local[4] \
target/scala-2.11/simple-project_2.11-1.0.jar \
"



docker run -ti \
	--rm \
	--name spark-scala-sbt \
	-p 4040:4040 \
	-v $(pwd)/my_project:/my_project \
	${IMAGE} \
	/bin/bash -c "$BUILD && $RUN"
