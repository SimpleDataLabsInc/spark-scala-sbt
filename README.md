Docker container with matching spark, scala and sbt versions. 

This contains starts fast as the 'Self-Contained Application' from https://spark.apache.org/docs/latest/quick-start.html is built in the 'Dockerfile' and a number of maven packages are already there.

## Build the container
~~~
docker build  -t ludwigprager/spark-scala-sbt:latest .
~~~

## Start a shell
~~~
./shell.sh
~~~
Subsequently, call 'spark-shell' or any other command.

## short cut in you .bashrc
with the following shortcut in your .bashrc you are able to start this container by typing 'sd'
~~~
sd() {

docker run \
	-ti --rm \
	-v <path to your project>/:/my_project/ \
        -p 4040:4040 \
	ludwigprager/spark-scala-sbt \
	/bin/bash
}
~~~
