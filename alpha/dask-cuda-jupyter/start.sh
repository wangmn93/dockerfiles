#! /bin/bash
set -m
dask-scheduler &
jupyter lab --ip 0.0.0.0 --allow-root

fg %1