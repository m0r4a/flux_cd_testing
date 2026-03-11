You can install my resources with the following commands:

```bash
flux install

# Create a source object to this repo
flux create source git homelab \
  --url=https://github.com/m0r4a/flux_cd_testing \
  --branch=public \
  --interval=1m

# Add all the kustomizations
flux create kustomization homelab \
  --source=homelab \
  --path=./clusters/homelab \
  --prune=true \
  --interval=10m
```
