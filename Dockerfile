FROM python:3.7-alpine
RUN apk add --virtual .build-deps \
    gcc \
    python3-dev \
    musl-dev \
    postgresql-dev \
    openssl-dev \
    libffi-dev \
    libsodium-dev \
    build-base\
    && pip install psycopg2 && pip install pynacl && pip install cryptography --no-binary cryptography

