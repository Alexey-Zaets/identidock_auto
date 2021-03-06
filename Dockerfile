FROM python:3
RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask==1.0.2 uWSGI==2.0.17.1 requests2==2.16.0 redis==2.10.6
WORKDIR /app
COPY app /app
COPY cmd.sh /
EXPOSE 9090 9191
USER uwsgi
CMD ["/cmd.sh"]
