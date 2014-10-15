all:
	cd testers && make
	cd ../
	cd example && make

clean:
	cd testers && make clean
	cd ../
	cd example && make clean
