<!-- ABOUT THE PROJECT -->

## About fastDocker403unlocker

I had so many challenges in choosing the docker registry mirror that has the docker image that I wanted and has acceptable download speed that fits with my internet service provider so I developed an script that checks and tests the speed of the docker registry mirrors so I won't waste my time on finding the best docker registry mirror.

![image](https://github.com/ArmanTaheriGhaleTaki/fastDocker403unlocker/assets/88885103/f54e9e63-4c04-4ab6-8a09-920ce71eeedb)

<!-- GETTING STARTED -->

##  prerequisites
   At first you need to install requirements packages for **Debian** base distribution
``` sh    
sudo apt update -y && sudo apt install skopeo
```
## how to use the projcet ?
to download the script you can use the following command 
```sh
wget -c https://raw.githubusercontent.com/ArmanTaheriGhaleTaki/fastdocker403unlocker/main/bash.sh
```
after that you need to give the image name and tag as an argument with this format **[image]:tag**     
to run the script to analyzing this image at docker mirror registries that are available in [.env](https://raw.githubusercontent.com/ArmanTaheriGhaleTaki/fastDocker403unlocker/main/.env) file   
you can use  the script like this 
```
bash bash.sh gitlab/gitlab-ce:17.0.0-ce.0
```

## Contact

My social media - [@armondy🙄](https://twitter.com/taherighaletaki) - armantahery1381@gmail.com

Project Link: [fastDocker403unlocker](https://github.com/ArmanTaheriGhaleTaki/fastDocker403unlocker)
