# docker
## 使い方
このディレクトリに移動し、dockerファイルをビルドしてdockerイメージをつくる  
`$ sudo docker build -t pytorch -f pytorch/docker/pytorch/Dockerfile .`
dockerイメージからコンテナを作成して起動  
`$ ./run_docker.sh`
