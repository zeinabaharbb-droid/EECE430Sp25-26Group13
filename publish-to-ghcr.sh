#!/usr/bin/env bash
set -euo pipefail
# Publish locally built image to GitHub Container Registry.
# Usage: export GITHUB_TOKEN=ghp_xxxx && ./publish-to-ghcr.sh

OWNER="zeinabaharbb-droid"
IMAGE_NAME="eece430sp25-26group13"
TAG="${1:-latest}"
FULL_IMAGE="ghcr.io/${OWNER}/${IMAGE_NAME}:${TAG}"

if [[ -z "${GITHUB_TOKEN:-}" ]]; then
  echo "Set GITHUB_TOKEN (classic PAT with write:packages) first." >&2
  exit 1
fi

docker build -t "volleyhub-playerlist:${TAG}" .
docker tag "volleyhub-playerlist:${TAG}" "${FULL_IMAGE}"
echo "${GITHUB_TOKEN}" | docker login ghcr.io -u "${OWNER}" --password-stdin
docker push "${FULL_IMAGE}"
echo "Pushed ${FULL_IMAGE}"
