FROM alpine:3.8

ENV VERSION 3.1.0

RUN wget -O /usr/local/bin/kustomize https://github.com/kubernetes-sigs/kustomize/releases/download/v${VERSION}/kustomize_${VERSION}_linux_amd64
RUN chmod +x /usr/local/bin/kustomize

ENTRYPOINT [ "kustomize" ]
