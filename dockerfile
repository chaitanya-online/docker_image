FROM almalinux
ADD https://raw.githubusercontent.com/chaitanya-online/json-path/master/src/main/java/com/example/jsonpath/service/JsonDataService.java /tmp/
RUN yum install git -y
RUN yum install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html