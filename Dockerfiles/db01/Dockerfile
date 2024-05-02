FROM mysql:5.7
LABEL "Project"="Blog-s-website"
LABEL "Author"="Akhil Panwar"

ENV MYSQL_ROOT_PASSWORD=Dpu9897
ENV MYSQL_DATABASE=postdb

COPY dump.sql /docker-entrypoint-initdb.d/dump.sql
