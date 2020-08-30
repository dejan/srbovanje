default: clean lib/preslovi.so

lib/preslovi.so:
	mkdir -p lib
	go build -buildmode=c-shared -o lib/preslovi.so preslovi.go

clean:
	rm -rf lib
