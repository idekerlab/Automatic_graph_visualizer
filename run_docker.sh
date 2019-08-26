#!/bin/bash
sudo docker run \
--rm -it \
-p 8888:8888 \
-v $(pwd):/workdir \
-w /workdir \
autoGV \
"$@"
# -v $(pwd):/workdir: 現在のディレクトリ(testdir)とdocker内のworkdirを繋ぐ
# -w /workdir: docker内で初期コマンド(jupyter notebook)を動かすディレクトリを指定(/workdir)
