#!/bin/bash

./ill 2>/dev/null
if [[ $? -eq 0 ]]; then
    echo "No SIGILL?"
fi

./avx
if [[ $? -eq 0 ]]; then
    echo "Supports AVX"
    ./avx2
    if [[ $? -eq 0 ]]; then
        echo "Supports AVX2"
    fi
fi
echo "Finished test."
