#!/bin/bash

timestamp=$(date +%s%N)

cmd=$(speedtest-cli --simple)

line=$(echo -n "$cmd" | awk '/Ping/ {print "ping=" $2} /Download/ {print "download=" $2 * 1000 * 1000} /Upload/ {print "upload=" $2 * 1000 * 1000}' | tr '\n' ',' | head -c -1)

echo "speedtest $line $timestamp"
