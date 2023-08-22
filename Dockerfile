FROM kazu/pyrozu-userbot:buster

RUN git clone -b PyroZu-Userbot https://github.com/ionmusic/PyroZu-Userbot /home/pyrozuuserbot/ \
    && chmod 777 /home/pyrozuuserbot \
    && mkdir /home/pyrozuuserbot/bin/

COPY ./sample_config.env ./config.env* /home/pyrozuuserbot/

WORKDIR /home/pyrozuuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
