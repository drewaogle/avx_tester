#!/bin/bash
make
docker build -t drewaogle/avx_tester -f docker/Dockerfile .
