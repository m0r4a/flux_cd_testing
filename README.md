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

So in to public `clusters/homelab/flux-system/gotk-sync.yaml` it uses https instead of SSH and you

[I still had to manually remove the secrets part)

``bash
flux install
kubectl apply -k github.com/m0r4a/flux_cd_testing/clusters/homelab/flux-system
```
