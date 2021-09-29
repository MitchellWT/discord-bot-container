FROM python:3.9-slim-bullseye

WORKDIR /usr/src/app/bot

RUN apt-get update -y && apt-get install -y ffmpeg

COPY requirements.txt ../
RUN pip install --no-cache-dir -r ../requirements.txt

CMD [ "python", "main.py" ]
