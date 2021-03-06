for d in ./*/ ; do (cd "$d" && redis-server ./redis.conf &); done

redis-cli --cluster create \
172.17.0.1:7000 \
172.17.0.1:7001 \
172.17.0.1:7002 \
172.17.0.1:7003 \
172.17.0.1:7004 \
172.17.0.1:7005 \
--cluster-replicas 1 