FROM almalinux
RUN yum install nginx -y
ADD https://raw.githubusercontent.com/chaitanya-online/json-path/master/src/main/java/com/example/jsonpath/service/JsonDataService.java /tmp/
CMD ["nginx","-g","daemon off;"]