- [static-serve Helm Demo](#static-serve-helm-demo)
  - [Building Image](#building-image)
    - [NGINX Unit + Static Files](#nginx-unit--static-files)
  - [Deploying on Kubernetes](#deploying-on-kubernetes)
    - [Deploying Chart](#deploying-chart)
    - [Scaling Horizon](#scaling-horizon)

# static-serve Helm Demo

Run nginx unit to serve static files on Kubernetes using Helm.

## Building Image

images are based on my own [Nginx Unit Alpine](https://gitlab.com/jd1378/nginx-unit-alpine) Image

### NGINX Unit + Static Files

The images generated with NGINX Unit + Static Files are using [jd1378/static-serve chart](https://github.com/jd1378/helm-charts/tree/master/charts/static-serve) and you may find there the documentation on how to deploy the chart.

Basically, the final Docker image will be built using the `Dockerfile` file.

## Deploying on Kubernetes

### Deploying Chart

A brief example can be found in `.helm/deploy.sh` on how to deploy your files.

### Scaling Horizon

It is well known that for Kubernetes, you may scale based on CPU or memory allocated to each pod. But you can also scale based on Prometheus metrics.
