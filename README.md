# GCP Auth Check Using Workflow Identity Provider

Minimal project to verify GitHub Actions can authenticate to Google Cloud using Workload Identity Federation.

## Workflow

[`.github/workflows/gcp-auth-check.yml`](.github/workflows/gcp-auth-check.yml) runs on `workflow_dispatch` and:

1. Authenticates with `google-github-actions/auth` via a Workload Identity Provider and service account
2. Sets up the Cloud SDK
3. Probes access with `gcloud auth list` and `gcloud projects list --limit=1`

## Required secrets

Add these repository secrets in GitHub:

| Secret | Description |
|--------|-------------|
| `GCP_WORKLOAD_IDENTITY_PROVIDER` | Full provider resource name, e.g. `projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/POOL_ID/providers/PROVIDER_ID` |
| `GCP_SERVICE_ACCOUNT` | Service account email, e.g. `github-actions@PROJECT_ID.iam.gserviceaccount.com` |

## Run it

1. Add the secrets above
2. Actions → **GCP Auth Check** → **Run workflow**

A successful run means GitHub can obtain GCP credentials through the Workload Identity Provider.
