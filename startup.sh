#!/bin/bash
trap fail_test 4

fail_test() {
    echo "Illegal Instruction encountered. Exiting."
    exit 1
}

./avx
echo "Supports AVX"
./avx2
echo "Supports AVX2"
