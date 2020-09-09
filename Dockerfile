# Pull Base Image
FROM ubuntu:18.04

# copy code into image and set as working directory

COPY . /application
WORKDIR /application

# install dependencies
RUN sudo apt-get -y update && \
    pip install pipenv && \
    pipenv install --system --deploy

EXPOSE 5000

ENTRYPOINT ["gunicorn"]

CMD ["server:app"]