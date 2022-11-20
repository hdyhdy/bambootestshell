#!/usr/bin/env bash

i=0
porta=3735
portb=8070
start(){
    for (( j=2; j<=5; j++))
    do
      let i+=1
      Name=bambooserver${i}
      ipAddr=172.18.0.${j}
      docker run -itd --name ${Name} --network bamboo_net --ip ${ipAddr} -p $porta:$porta -p $portb:$portb bamboo:server /bin/bash
      docker exec -d $Name /home/run.sh
      let porta+=1
      let portb+=1
      sleep 0.1
      echo replica ${j} is launched!
    done
}

# update config.json to replicas
start 
