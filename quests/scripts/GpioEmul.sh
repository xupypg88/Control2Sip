#!/bin/bash
echo 1 > gpio$1
sleep 0.3
echo 0 > gpio$1
