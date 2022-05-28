all: compile package
	
package: compile
	dpkg-deb --build .
	dpkg-name ..deb 

compile:
	gcc -o libTest libTest.c 

clean:
	rm -rf libTest *.deb 