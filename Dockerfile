FROM python:3.10-alpine3.16
# 
RUN mkdir /usr/src/app/
WORKDIR /usr/src/app/
# 
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH "${PYTHONPATH}:/usr/src/app/"
#
RUN apk update; apk add --no-cache \
git \
postgresql-dev \
gcc \
python3-dev \
musl-dev \
libressl-dev \
libffi-dev \
zeromq-dev
#
COPY . /usr/src/app/
# 
RUN pip install --upgrade pip; pip install -r requirements.txt
#
RUN chmod +x /usr/src/app/entrypoint.sh
