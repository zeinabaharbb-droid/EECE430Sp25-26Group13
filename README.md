# EECE430 — Assignment 5 (Group 13)

VolleyHub: Django **player list** app with Docker support.

**Repository:** [EECE430Sp25-26Group13](https://github.com/zeinabaharbb-droid/EECE430Sp25-26Group13)

## Run with Docker (local)

From this folder:

```bash
docker build -t volleyhub-playerlist:latest .
docker run --rm -p 8000:8000 volleyhub-playerlist:latest
```

Open: [http://127.0.0.1:8000](http://127.0.0.1:8000)

## Run the image from GitHub (Container Registry)

After you push to `main`, GitHub Actions builds and pushes the image to **GitHub Container Registry** (`ghcr.io`).

**Pull and run** (replace if your package name differs; use lowercase in the image tag):

```bash
docker login ghcr.io -u YOUR_GITHUB_USERNAME
docker pull ghcr.io/zeinabaharbb-droid/eece430sp25-26group13:latest
docker run --rm -p 8000:8000 ghcr.io/zeinabaharbb-droid/eece430sp25-26group13:latest
```

On first use, open the **Packages** entry for this repo on GitHub and set visibility if your course requires a public package.

## Collaborators (instructors)

On GitHub: **Settings → Collaborators and teams → Add people**  
Invite the lab instructor by **GitHub username** or **email** (e.g. course staff address).

## Manual image upload (optional)

If you prefer not to use Actions, use `publish-to-ghcr.sh` with a Personal Access Token that has `write:packages`.
