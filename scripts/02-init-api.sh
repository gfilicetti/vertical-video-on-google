#!/bin/bash

# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Source environment variables from .env file (see scripts/setup-env.sh)
source .env

# Enable all the APIs needed in our demos
for GOOGLE_CLOUD_API in \
  aiplatform.googleapis.com \
  cloudaicompanion.googleapis.com \
  iam.googleapis.com \
  cloudbuild.googleapis.com \
  cloudresourcemanager.googleapis.com \
  compute.googleapis.com \
  pubsub.googleapis.com \
  eventarc.googleapis.com \
  servicecontrol.googleapis.com \
  serviceusage.googleapis.com \
    ; do
  gcloud services enable --project ${GCP_PROJECT_ID} \
    ${GOOGLE_CLOUD_API}
done
