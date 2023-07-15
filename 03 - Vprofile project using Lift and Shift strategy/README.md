# Note:
# - This project is created to deploy a java based application on AWS using lift and shift strategy.
# - This project is owned by visual path team and created under a course of devops to learn the technologies.
![image](https://github.com/aishwaryjoshi26/DevopsProjects/assets/99661517/4b2488db-614e-4d45-9d43-4c9bb49389a8)
 
![image](https://github.com/aishwaryjoshi26/DevopsProjects/assets/99661517/7bdea064-cd5f-4217-82d9-cf48ffcf72bd)

# Step-1 Purchase a domain with and domain provider(Godaddy, hostinger, namecheap etc...) and create a free tier account.
# Step-2 Under ACM service create a certificate.
![image](https://github.com/aishwaryjoshi26/DevopsProjects/assets/99661517/678a9c89-739a-4911-aeb6-4e4adb329bfa)
![image](https://github.com/aishwaryjoshi26/DevopsProjects/assets/99661517/b6812d0b-3d39-4ece-8623-c7bffc75782d)
# Step-3 Copy the CName and CName value and add a DNS entry under your domain in your domain providers account.
![image](https://github.com/aishwaryjoshi26/DevopsProjects/assets/99661517/0a23a77b-e0a6-49ee-874f-b73d10617321)
# Step-4 Create security groups for Application service, Backend service(MQ,DB and cache) and ELB. For this project outbound rule can be to allow all traffic. Below screenshots are for inbound rule.
a) App
- It should allow traffic on SSH port(From your IP), on port 8080 (Application service runs on tomcat) from everywhere and on port 8080 from the security group of ELB.
![image](https://github.com/aishwaryjoshi26/DevopsProjects/assets/99661517/3738a3d9-9c03-4260-a33c-ffe285d7a032)

b) Backend
- Allow all traffic from the same SG, from App SG on port 5672 for MQ, from App SG on port 3360 for DB, from App SG on port 11211 for cache and from your IP on port 22 for ssh. 
![image](https://github.com/aishwaryjoshi26/DevopsProjects/assets/99661517/c0c06d0e-ee89-4f31-867f-645c6d88cff6)

c) ELB
- Allow traffic on port 80 and 443 for http and https respectively.
![image](https://github.com/aishwaryjoshi26/DevopsProjects/assets/99661517/4a8bf05b-0872-4e7c-805b-5b4af4b48978)

# Step-5 Create EC2 instances with below configuration and select the security group which were created above.
Default userdata path: https://github.com/imnowdevops/vprofile-project.git, Branch: aws lift and shift (This will configure the infra for application)
a) App
- Os: Centos stream 9, Instance type: t2-micro, Userdata: tomcat_ubuntu.sh
b) DB(Mysql), MQ(Rabbit), Cache(Memcache)
- Os: Centos stream 9, Instance type: t2-micro, Userdata: mysql.sh, rabbitmq.sh and memcache.sh
