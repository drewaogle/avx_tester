#!/bin/bash
catch() {
    echo "Caught."
    exit 1
}

trap 'catch' ILL

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
