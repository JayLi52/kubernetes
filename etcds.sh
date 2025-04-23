# 启动 node1
etcd --name node1 \
--listen-client-urls http://127.0.0.1:2379 \
--advertise-client-urls http://127.0.0.1:2379 \
--listen-peer-urls http://127.0.0.1:2380 \
--initial-advertise-peer-urls http://127.0.0.1:2380 \
--initial-cluster node1=http://127.0.0.1:2380,node2=http://127.0.0.1:2382,node3=http://127.0.0.1:2384 \
--initial-cluster-token etcd-cluster-1 \
--initial-cluster-state new &

# 启动 node2
etcd --name node2 \
--listen-client-urls http://127.0.0.1:2381 \
--advertise-client-urls http://127.0.0.1:2381 \
--listen-peer-urls http://127.0.0.1:2382 \
--initial-advertise-peer-urls http://127.0.0.1:2382 \
--initial-cluster node1=http://127.0.0.1:2380,node2=http://127.0.0.1:2382,node3=http://127.0.0.1:2384 \
--initial-cluster-token etcd-cluster-1 \
--initial-cluster-state new &

# 启动 node3
etcd --name node3 \
--listen-client-urls http://127.0.0.1:2383 \
--advertise-client-urls http://127.0.0.1:2383 \
--listen-peer-urls http://127.0.0.1:2384 \
--initial-advertise-peer-urls http://127.0.0.1:2384 \
--initial-cluster node1=http://127.0.0.1:2380,node2=http://127.0.0.1:2382,node3=http://127.0.0.1:2384 \
--initial-cluster-token etcd-cluster-1 \
--initial-cluster-state new &    