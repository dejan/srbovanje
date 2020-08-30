PLATFORM := $(shell ruby -e "puts [Gem::Platform.local.cpu, '-', Gem::Platform.local.os].join")

default:
	mkdir -p lib
	rm -f lib/preslovi.$(PLATFORM).so
	go build -buildmode=c-shared -o lib/preslovi.$(PLATFORM).so preslovi.go

