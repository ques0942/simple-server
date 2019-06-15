FROM python

WORKDIR /simple-server

COPY __init__.py /simple-server
COPY requirements.txt /simple-server
RUN pip install -r requirements.txt

ENV FLASK_APP=__init__.py
EXPOSE 5000

ENTRYPOINT ["/usr/local/bin/python", "-m", "flask", "run", "--host=0.0.0.0"]
