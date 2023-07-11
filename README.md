kubectl_version=1.24.15
docker build --build-arg kubectl_VERSION=${kubectl_version} -t ilanni2460/kubectl:${kubectl_version}-alpine ./
docker push ilanni2460/kubectl:${kubectl_version}-alpine
