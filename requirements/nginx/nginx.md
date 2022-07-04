#Build
sudo docker build . -t nginx

#Run
sudo docker run -it --rm -p 8081:443 nginx

#Website
Open Browser in VM and visit localhost:8081