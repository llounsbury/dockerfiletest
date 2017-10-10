FROM ubuntu

#Install package software-properties-common which allows adding repositories
RUN apt-get update && apt-get install  -y software-properties-common 

#add the repository that contains the needed files for GCC 7
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test

#get GCC7, G++7, and 
RUN apt-get update && apt-get install -y \
	gcc-7 \
	g++-7 \
	git

#cpp file is now copied from a GitHub repository
#run.sh has the commands to build and compile the test after pulling a test file from git
#git used is git://github.com/llounsbury/dockertesting, a simple test I set up
COPY run.sh /runtest.sh

#compile and run the example file with GCC7, commands are in the bash script
CMD ["/runtest.sh"]