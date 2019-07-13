#!/bin/bash

### Step 1 - Provision google cloud instance

export blog_instance_name="instance-wordpress-prod"
export blog_instance_zone="asia-southeast1-a"

gcloud compute instances create $blog_instance_name --zone $blog_instance_zone

wordpress_ip=`gcloud compute instances list | awk '{print $5}' | tail -1`

echo "wordpress blog can be accessed thru : http://$wordpress_ip"
