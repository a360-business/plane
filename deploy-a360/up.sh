#!/usr/bin/env sh
# Sobe o Plane da a360 (Community, versão travada em plane.env: APP_RELEASE).
# Imagens oficiais enquanto não alteramos o código; se alterarmos, buildar a partir deste fork.
set -eu
cd "$(dirname "$0")"
[ -f plane.env ] || { echo "falta plane.env (copie de ../deployments/cli/community/variables.env e troque os segredos)"; exit 1; }
RUNTIME="${RUNTIME:-docker}"
exec "$RUNTIME" compose -p a360-plane --env-file plane.env -f docker-compose.yml "${@:-up -d}"
