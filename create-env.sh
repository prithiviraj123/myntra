#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating  diyakart1$i container.."
    sleep 1
    docker run --name diyakart $i -d -it ajax-tech1 /bin/bash
    echo "diyakart$i container has been created!"
	echo "=============================="
done
docker inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} `docker ps -q` > IPs.txt
./create_lb.sh
