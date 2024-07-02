# Fast Docker 403 Unlocker

I had so many challenges in choosing the docker registry mirror that has the docker image that I wanted and has acceptable download speed that fits with my internet service provider so I developed an script that checks and tests the speed of the docker registry mirrors so I won't waste my time on finding the best docker registry mirror.

![image](https://github.com/ArmanTaheriGhaleTaki/fastDocker403unlocker/assets/88885103/f54e9e63-4c04-4ab6-8a09-920ce71eeedb)

## Installing using package manager 
### apt 
```bash
sudo add-apt-repository ppa:pourpasand/403unlocker
sudo apt update
sudo apt install fastdocker403unlocker
```


## Using from source 

At first you need to install requirements packages for **Debian** base distribution

``` bash
sudo apt update -y && sudo apt install skopeo
```

to download the script you can use the following command

```bash
wget -c https://raw.githubusercontent.com/ArmanTaheriGhaleTaki/fastdocker403unlocker/main/fastDocker403unlocker
```
## How-to use
after that you need to give the image name and tag as an argument with this format **[image]:tag**
to run the script to analyzing this image at docker mirror registries that are available in [fastDocker403unlocker.conf](https://raw.githubusercontent.com/ArmanTaheriGhaleTaki/fastDocker403unlocker/main/fastDocker403unlocker.conf) file
you can use  the script like this

```bash
fastDocker403unlocker gitlab/gitlab-ce:17.0.0-ce.0
```
or you can give your docker compose file to the script and it will find the best registry for each docker image and replace it 
```bash
fastdocker403unlocker -i docker-compose.yml
fastdocker403unlocker -i docker-compose.yml -o fast-docker-compose.yml
```
## Contact

My social media - [@armondy🙄](https://twitter.com/taherighaletaki) - <armantahery1381@gmail.com>

Project Link: [fastDocker403unlocker](https://github.com/ArmanTaheriGhaleTaki/fastDocker403unlocker)
