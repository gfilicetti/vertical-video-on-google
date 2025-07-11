# Vertical Video on Google Cloud

This is an example implementation of creating vertical video from standard horizontal video using GenAI tools on Google Cloud

<!-- Create table of contents that link to below sections in markdown -->
- [Architecture](#architecture)
- [Technology Used](#technology-used)
- [Initializing Your Project](#initializing-your-project)

## Architecture
#### TBD

## Technology Used
**Google Cloud**
- [Vertex AI](https://cloud.google.com/vertex-ai/generative-ai/docs)
- [Veo3 (Preview)](https://cloud.google.com/vertex-ai/generative-ai/docs/models/veo/3-0-generate-preview)
- [Pub/Sub](https://cloud.google.com/pubsub/docs/overview)
- [Eventarc](https://cloud.google.com/eventarc/docs/overview)
- [gcloud CLI](https://cloud.google.com/sdk/docs/install)

**Infrastructure as Code**
- [Terraform](https://www.terraform.io/downloads.html)

## Initializing Your Project

#### THESE INSTRUCTIONS ARE A WORK IN PROGRESS
These instructions walk you through setting up your environment for this project.

You will need to clone this repository to the machine you want to use to set up your Google Cloud environment.

> **NOTE:** We recommended using Google Cloud Shell instead of your local laptop. Cloud Shell has all the tooling you need already pre-installed.

1. First authenticate to Google Cloud:

  ```bash
  gcloud auth application-default login
  ```

2. Create a new project (skip this if you already have a project created):

  ```bash
  gcloud projects create <your-project-id>
  ```

3. Set the new project as your context for the `gcloud` CLI:

  ```bash
  gcloud config set project <your-project-id>
  ```

4. Check if your authentication is ok and your project id is set:

  ```bash
  gcloud projects describe <your-project-id>
  ```

> __Note:__ You should see your `projectId` listed with an `ACTIVE` state.

5. Setup your unique `.env` variables to be used throughout the setup
process

  ```bash
  . ./scripts/01-setup-env.sh
  ```
  During this step you will be prompted for a couple inputs relative to your unique project. Most
  inputs will contain defaults that might already be set, in which case go ahead and press [ENTER]
  to accept and continue.

    a. The GitHub username/organization. This is the value used above when you cloned your fork.
    b. The name of the GitHub repository, by default this is set to `gke-github-deployment`.
    c. Your unique Google Cloud project ID.
    d. Defaut region location for Google Cloud setup.
    e. A short (3-5 char) identifier for your cloud resources (e.g. gcp).

6. Enable all the needed Google Cloud APIs by running this script:

  ```bash
  . ./scripts/02-enable-api.sh
  ```

7. Initial setup to for Terraform. Create Terraform `vars` and remote state state bucket in GCS.

  ```bash
  . ./scripts/03-setup-terraform.sh
  ```

#### THESE INSTRUCTIONS ARE A WORK IN PROGRESS

## Contributors
- Adrian Graham
- Sofyan Saputra
- Chyanna Antonio
- Gino Filicetti