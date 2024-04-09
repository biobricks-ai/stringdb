#!/usr/bin/env bash
rm -rf cache/
dvc stage add -f -n download_data \
    -d R/download.R \
    -o cache/ \
    Rscript R/download.R
dvc stage add -f -n build_data \
    -d cache/ \
    -d R/build.R \
    -o brick/ \
    Rscript R/build.R
dvc repro
