FROM python:2

WORKDIR /usr/src/app

RUN mkdir /config
RUN mkdir /sdcard
RUN mkdir /backup

RUN pip install Twisted
RUN pip install service_identity

COPY . .

#seems like there are more ports to expose
#EXPOSE 1900
#EXPOSE 52235
ENTRYPOINT [ "python", "./pc_autobackup.py", "--config_file=/config/pc_autobackup.cfg", "--log_file=/config/autobackup.log", "--output_dir=/backup" ]
CMD [ ]



