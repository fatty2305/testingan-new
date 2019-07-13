#!/bin/bash

### Step 1 - Provision google cloud instance

export blog_instance_name="instance-wordpress-prod"
export blog_instance_zone="asia-southeast1-a"

gcloud compute instances create $blog_instance_name --zone $blog_instance_zone

