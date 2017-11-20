FROM python:2.7-jessie
RUN cp  /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
RUN mkdir -p /usr/app/src
WORKDIR /usr/app/src
COPY requirements.txt /usr/app/
RUN pip install --no-cache-dir -r /usr/app/requirements.txt
RUN pip install uwsgi
COPY uwsgi-http.ini /usr/app/
EXPOSE 5001
CMD uwsgi /usr/app/uwsgi-http.ini
