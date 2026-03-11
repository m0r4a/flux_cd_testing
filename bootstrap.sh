flux install

kubectl create ns flux-system

kubectl apply -f \
https://raw.githubusercontent.com/m0r4a/flux_cd_testing/main/clusters/homelab/flux-system/gotk-components.yaml

kubectl apply -f \
https://raw.githubusercontent.com/m0r4a/flux_cd_testing/main/clusters/homelab/flux-system/gotk-sync.yaml
