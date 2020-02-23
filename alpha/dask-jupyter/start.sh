#! /bin/sh
dask-scheduler &
jupyter lab --ip 0.0.0.0 --allow-root&