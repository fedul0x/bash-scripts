#!/bin/bash
#Проверка исходных данных

find "$1" -iname "*$2*" -exec cat '{}' \; | wc -m
