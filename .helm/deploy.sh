#!/bin/sh

# Add the helm chart repo
helm repo add jd1378 https://jd1378.github.io/helm-charts
helm repo update

# Deploy the files with unit.
helm upgrade frontend --version=^1.0.0 -f static-serve-values.yaml --install jd1378/static-serve
