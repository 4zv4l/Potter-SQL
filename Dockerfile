FROM perl

# port used by the app
EXPOSE 8080

# setup project directory
WORKDIR /app

COPY app.plx /app
COPY db /app/db
COPY public /app/public
COPY views /app/views

# install dependencies
RUN cpanm Dancer2
RUN cpanm File::Slurp
RUN cpanm Mojo::SQLite
RUN cpanm Template::Toolkit

CMD ["perl", "app.plx"]
