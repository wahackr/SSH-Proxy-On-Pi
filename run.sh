#!/bin/bash
ssh -D 0.0.0.0:$PORT -tt -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -C -i keys/$PRIVATE_KEY  $HOST

