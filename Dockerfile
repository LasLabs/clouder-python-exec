FROM clouder/base:3.4
MAINTAINER Dave Lasley <dave@laslabs.com>

ARG PYTHON_PACKAGE="python3"
ARG INCLUDE_DEV="1"

RUN apk add --no-cache build-base \
                       curl \
                       $PYTHON_PACKAGE \
                       "${PYTHON_PACAKAGE}-dev"

RUN if [[ "$INCLUDE_DEV" == "1" ]]; \
    then \
        apk add --no-cache build-base "${PYTHON_PACAKAGE}-dev"; \
    fi

RUN curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | $PYTHON_PACKAGE

RUN if [[ "$PYTHON_PACKAGE" == "python3" ]]; \
    then \
        ln -s /usr/bin/python3 /usr/bin/python; \
    fi

RUN apk del curl

COPY ./docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["cat"]
