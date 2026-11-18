#!/bin/bash

awk -F ',' '/banana/ { print $3 }' frutta.csv
