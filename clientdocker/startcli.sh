#!/usr/bin/env bash

start(){
      docker run -itd --name bambooClient --network bamboo_net bamboo:client /bin/bash
      #docker exec -d $Name /home/run.sh
      docker exec -d bambooClient /home/client
      sleep 0.1
      echo client is launched!
}

# update config.json to replicas
start 
