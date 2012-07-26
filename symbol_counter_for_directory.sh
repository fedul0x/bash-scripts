#!/bin/bash

find "$1" -iname "*$2*" -exec cat '{}' \; | wc -m
