GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -a -o heketi 
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -a -o heketi-cli ./client/cli/go

docker build -t docker.io/rivernet/heketi:dev .
docker save docker.io/rivernet/heketi:dev > heketi.tar

scp heketi.tar root@192.168.254.54:/root/

