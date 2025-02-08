# highly available webserver with a simple index.html with terraform #

## Joel Ebenka ##

## Overview ##
This repository contains Terraform configurations to set up a highly available web server that serves a simple `index.html` file. The architecture is designed to ensure minimal downtime and optimal performance.

The setup includes:

- Load Balancer (Elastic Load Balancing): Distributes incoming traffic across multiple web servers to ensure high availability.
- Web Servers (Amazon EC2): EC2 instances hosting the index.html file.
- Auto Scaling Group (ASG): Automatically adjusts the number of EC2 instances based on demand, ensuring performance during peak times.
- Security Groups: Manages inbound and outbound traffic to the EC2 instances.
