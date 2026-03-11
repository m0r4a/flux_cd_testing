Notes:

I installed this cluster using:

```bash
flux bootstrap github \
  --owner=m0r4a \
  --repository=flux_cd_testing \
  --branch=main \
  --path=clusters/homelab \
  --personal \
  --token-auth
```

So in to public `clusters/homelab/flux-system/gotk-sync.yaml` it uses https instead of SSH.

[I still had to manually remove the secrets part in the `clusters/homelab/flux-system/gotk-sync.yaml` file.)

You can copy the cluster using this commands:

``bash
kubectl apply -k github.com/m0r4a/flux_cd_testing/clusters/homelab/flux-system
sleep 5
kubectl apply -k github.com/m0r4a/flux_cd_testing/clusters/homelab/flux-system
```

You need to apply it twice because the resources are not applied in the correct order, it's still in WIP
