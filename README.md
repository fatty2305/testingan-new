# Found error while accessing Wordpress page

```
<?php
/**
 * Front to the WordPress application. This file doesn't do anything, but loads
 * wp-blog-header.php which does and tells WordPress to load the theme.
 *
 * @package WordPress
 */

/**
 * Tells WordPress to load the WordPress theme and output it.
 *
 * @var bool
 */
define( 'WP_USE_THEMES', true );

/** Loads the WordPress Environment and Template */
require( dirname( __FILE__ ) . '/wp-blog-header.php' );
```

Seems it's related to php missing file

## Steps when creating GCP instance and installing ansible (and the dependencies)

--- Create free account in Google Cloud Platform ---

- Project name : test-1-wordpress

- Instances list :
  - instance-wp-1

- Script to create instance : ```create-gce-instance.sh```

- How to run : ```bash -x create-gce-instance.sh```

- Install ansible and python in instance-wp-1 :

```
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible -y
sudo apt-get install python-pip
```

```
tessar_rama23@instance-wp-1:~/wp-webapp/testingan-new/roles$ ansible-galaxy init server
- server was created successfully
tessar_rama23@instance-wp-1:~/wp-webapp/testingan-new/roles$ ansible-galaxy init php
- php was created successfully
tessar_rama23@instance-wp-1:~/wp-webapp/testingan-new/roles$ ansible-galaxy init mysql
- mysql was created successfully
tessar_rama23@instance-wp-1:~/wp-webapp/testingan-new/roles$ ansible-galaxy init wordpress
- wordpress was created successfully
```

- How to deploy :

```
tessar_rama23@instance-wp-1:~/wp-webapp/testingan-new$ ansible-playbook deploy-wordpress.yml -u tessar -vvv
```

- Validate apache test page (forgot to screen-captured it) :
  - hit external IP to check apache test page ---> http://35.247.153.175/
    ```Apache2 Ubuntu Default Page - It works!```

- Validate wordpress page :
  - hit external IP to check wordpress page ---> http://35.247.153.175/
    ```found error as mentioned above```
