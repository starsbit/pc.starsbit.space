# Production image for self-hosting (homelab k3s "shipyard"): the static site served by unprivileged nginx on :8080.
# Build: docker build -t pc-starsbit-space .   Run: docker run -p 8080:8080 pc-starsbit-space
# When the site grows, put its files under site/ ... for now everything web-facing is index.html.
FROM nginxinc/nginx-unprivileged:1.29-alpine
COPY deploy/nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html google68a785d1b6ad166e.html /usr/share/nginx/html/
EXPOSE 8080
