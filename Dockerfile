FROM python:3.8-slim

ARG POETRY_VERSION=1.8
ENV POETRY_NO_INTERACTION=1 \
    POETRY_VIRTUALENVS_CREATE=false \
    POETRY_CACHE_DIR='/var/cache/pypoetry' \
    POETRY_HOME='/usr/local' \
    PIP_DISABLE_PIP_VERSION_CHECK=1
RUN pip install --no-cache-dir "poetry==$POETRY_VERSION"
