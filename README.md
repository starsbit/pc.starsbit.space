# pc.starsbit.space

Projects by starsbit. For now a work-in-progress placeholder (`index.html`).

## Hosting

Runs on the homelab k3s cluster "shipyard" (`Dockerfile` + `deploy/nginx.conf`, unprivileged nginx on :8080,
`/healthz`) and is published through a Cloudflare Tunnel. A push to `master` is deployed automatically within a few
minutes once the `docker-image` check has passed. New files must be copied in the `Dockerfile`.

    docker build -t pc-starsbit-space . && docker run -p 8080:8080 pc-starsbit-space
