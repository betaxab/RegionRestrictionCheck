FROM python:2.7-alpine

COPY check.sh /check.sh

RUN chmod +x /check.sh && \
    apk add --no-cache curl bash

ENTRYPOINT ["/bin/bash","/check.sh"]
