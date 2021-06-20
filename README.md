# Hashicorp Packer


![Hashicorp%20Packer%20f8c9bd0610014227a40b1b79f2bbbdf3/packer-vertical-monochrome.svg](https://res.cloudinary.com/readycle-com/image/upload/v1624167037/Readycle/Jenkins-ECommerce/packer-vertical-monochrome_icjmbx.png)

HashiCorp Packer streamlines the following:

- Rapid Infrastructure Depolyment
- Multi-Provider Portability
- Improved Stability
- Increased Dev/Production Parity
- Reliable Continous Delivery
- Appliance Demo Creation

### Case Study

This is project for building a custom AMI using the HashiCorp Packer. 

- Created custom modules to deploy the VPC with private and public subnets.
- Added provisioner of shell script to update and install nginx and docker on the AMI.
- Created createInstance.tf

 

```bash
# Initialize Packer
packer init
# Build packer custom AMI from the project
packer build FILE_NAME
```

### Scenario - 1

Builds a custom AMI of Ubuntu on the AWS cloud. We also try to pass the parameters for the source_ami_filters.

### Scenario - 2

Builds a custom AMI of Ubuntu on the AWS cloud. We add provisioners to execute the shell script and copy a sample file from the build machine to the host machine and package it to a custom AMI.

```json
"provisioners": [
        {
            "type": "file",
            "source": "./helloworld.txt",
            "destination": "/home/ubuntu/"
        },
        {
            "type":"shell",
            "inline": [
                "ls -al /home/ubuntu",
                "cat /home/ubuntu/helloworld.txt"
            ]
        },
        {
            "type": "shell",
            "script": "./installNginx.sh"
        }
    ]
```
