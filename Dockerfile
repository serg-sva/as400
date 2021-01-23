# Build the manager binary
FROM quay.io/operator-framework/helm-operator:v1.3.0

### Required OpenShift Labels
LABEL name="As400rpc Operator" \
      vendor="Openlegacy" \
      version="v0.0.1" \
      release="1" \
      summary="This is a tech preview of an as400rpc helm operator." \
      description="This operator will deploy as400rpc-operator to the cluster."

# Required Licenses
COPY licenses /licenses

ENV HOME=/opt/helm
COPY watches.yaml ${HOME}/watches.yaml
COPY helm-charts  ${HOME}/helm-charts
WORKDIR ${HOME}

