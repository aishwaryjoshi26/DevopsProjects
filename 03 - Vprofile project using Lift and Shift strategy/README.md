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


