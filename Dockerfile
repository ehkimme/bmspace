ARG BUILD_FROM
FROM $BUILD_FROM

ENV WORK_DIR=/workdir \
  HASSIO_DATA_PATH=/data
  
WORKDIR ${WORK_DIR}

COPY . ./

# Install requirements for add-on
RUN \
  apk add --no-cache \
    python3 py3-pip

# install python library
RUN pip3 install --no-cache-dir -r requirements.txt

CMD [ "sh", "./run.sh" ]
