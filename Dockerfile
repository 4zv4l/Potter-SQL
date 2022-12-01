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
RUN cpanm -n Dancer2 File::Slurp Mojo::SQLite Template::Toolkit

CMD ["perl", "app.plx"]
