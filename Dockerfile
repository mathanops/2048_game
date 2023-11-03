FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update
RUN apt-get install -y nginx
RUN echo "daemon off;" >>/etc/nginx/nginx.conf

COPY js ./
COPY . ./
EXPOSE 3001
CMD ["nginx","js"]
