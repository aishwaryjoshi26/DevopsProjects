# 1) Create EC2 instance and launch a website using script in 1st project.
# 2) Create a EBS instance with 5GB of storage
# 3) Type command fdisk -l to check the attached disk.
![image](https://github.com/aishwaryjoshi26/DevopsProjects/assets/99661517/a42bc60c-da2e-49bc-a305-5c21f38ada5e)
# 4) Get the new disk name(higlighted in above screenshot) and type command fdisk /dev/xvdf(disk name)
# 5) Type m to get the command details.
![image](https://github.com/aishwaryjoshi26/DevopsProjects/assets/99661517/5fff9181-4e84-4f57-bcb3-c9f854c90c73)
# 6) Type n to create a new partition as per below screenshot.
![image](https://github.com/aishwaryjoshi26/DevopsProjects/assets/99661517/59e8bb53-131a-4011-b3d5-9f450aeb1828)
# 7) Type w to write the disk
![image](https://github.com/aishwaryjoshi26/DevopsProjects/assets/99661517/8008e6ba-6c08-4331-9219-b4534a7d587d)
# 8) Format the disk using mkfs.ext4 format. Type mkfs.ext4 /dev/xvdf
![image](https://github.com/aishwaryjoshi26/DevopsProjects/assets/99661517/43ae79cc-fba2-4f05-b6e5-190b3fab4df5)
# 9) For temporary mounting type mount /dev/xvdf /var/www/html/images
# 10) For permanent mounting edit /etc/fstab file and type /dev/xvdf /var/www/html/images default 0 0
# 11) Try to access the website with public IP and see if it works.




