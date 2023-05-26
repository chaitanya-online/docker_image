FROM almalinux
RUN yum install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html
COPY qi /usr/share/nginx/html/
ADD https://raw.githubusercontent.com/chaitanya-online/json-path/master/src/main/java/com/example/jsonpath/service/JsonDataService.java /tmp/
RUN yum install git -y
CMD ["nginx","-g","daemon off;"]