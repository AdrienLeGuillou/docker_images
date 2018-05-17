#!/bin/bash
rm -rf jupyterflow_cpu 
cp -R jupyterflow_gpu jupyterflow_cpu 
chmod -R 777 jupyterflow_cpu
sed -i 's/latest-gpu-py3/latest-py3/' jupyterflow_cpu/Dockerfile
