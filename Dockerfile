FROM ubuntu/apache2:latest
WORKDIR /modpill
RUN apt update && apt install git -y && \
git clone https://github.com/mirthturtle/modpill && \
cp ./modpill/* /var/www/html -r
EXPOSE 80