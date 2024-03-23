#!/bin/bash

# Komut çıktısını oku
output=$(sensors)

# Core sıcaklık değerlerini al
core_temps=($(echo "$output" | grep -oP 'Core\s+\d+:\s+\+\K\d+\.\d+'))

# Core sıcaklık değerlerini tek satırda yazdır
echo "${core_temps[0]} C , ${core_temps[1]} C, ${core_temps[2]} C, ${core_temps[3]} C"
