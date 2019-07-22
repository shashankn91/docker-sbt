FROM shashankn91/scala

Run  wget -O- "https://github.com/sbt/sbt/releases/download/v1.2.8/sbt-1.2.8.tgz" \
    |  tar xzf - -C /usr/local --strip-components=1 \
    && sbt exit

VOLUME /app
WORKDIR /app

CMD ["sbt"]
