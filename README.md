Docker container with matching spark, scala and sbt versions. 

This contains starts fast as the 'Self-Contained Application' from https://spark.apache.org/docs/latest/quick-start.html is built in the 'Dockerfile' and a number of maven packages are already there.

## Build the container
~~~
docker build  -t ludwigprager/spark-scala-sbt:1 .
~~~

## Start a shell
~~~
./shell.sh
~~~
