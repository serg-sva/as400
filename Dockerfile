# Build the manager binary
FROM quay.io/operator-framework/helm-operator:v1.0.0

### Required OpenShift Labels
LABEL name="as400-rpc Operator" \
      vendor="Openlegacy" \
      version="v0.0.1" \
      release="1" \
      summary="This is a tech preview of a as400-rpc helm operator." \
      description="This operator will deploy as400-rpc to the cluster."

# Required Licenses
COPY licenses /licenses

ENV HOME=/opt/helm
COPY watches.yaml ${HOME}/watches.yaml
COPY helm-charts  ${HOME}/helm-charts
WORKDIR ${HOME}
