#!/bin/sh

# Step 1: Create *.json and *.p4info
make

# Step 2: Assign those deps to ../../lib/main.py
#       - topology.json
#       - *.p4.json
#       - "simple_switch_grpc"
sudo python ../../lib/main.py \
    --topo topology.json \
    --switch_json l3_forward.json \
    --behavioral-exe simple_switch_grpc