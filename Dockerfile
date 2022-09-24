FROM python:3.10

RUN useradd -m service
USER service
WORKDIR /code

COPY --chown=service:service requirements.txt requirements.txt
RUN pip install --user -r requirements.txt

