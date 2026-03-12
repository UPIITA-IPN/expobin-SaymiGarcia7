#!/bin/bash

read base exponente mod

resultado=1
base=$((base % mod))

while [ $exponente -gt 0 ]
do
    if [ $((exponente % 2)) -eq 1 ]; then
        resultado=$(((resultado * base) % mod))
    fi

    base=$(((base * base) % mod))
    exponente=$((exponente / 2))
done

echo $resultado
