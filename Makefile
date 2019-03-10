.PHONY: build clean 
PROTOC=$(HOME)/bin/protoc

build:
	$(PROTOC) -I . ping.proto --go_out=plugins=grpc:.

clean:
	rm -rf ping.pb.do
