# Learn kubernetes

This project is just to study and practicing of kubernetes.

# Requirements

These tools are necessary to run this project:

- [Docker](https://docs.docker.com/get-docker/)
- [kind](https://kind.sigs.k8s.io/docs/user/quick-start/#installation)
- [kubectl](https://kind.sigs.k8s.io/docs/user/quick-start/#installation)
- [Docker hub](https://docs.docker.com/docker-hub/)

# Kind

kind lets you run k8s without a cloud provider. I'm using this tool called kind to create local nodes. It's required to have docker installed.

## Configuring the study cluster

Assuming you cloned this repo and are on the repo root folder. Execute this command:

`kind create cluster --config=k8s/kind.yaml --name=learn-k8s`

# Example app

There is a *golang* 'hello world' app just to be managed by k8s during the practices. Before start using k8s we need to build an image and push it to a docker hub account:

Build the image:

`docker build -t [docker-hub-account]/hello-go .`

Push image to docker hub:

`docker push [docker-hub-account]/hello-go`
