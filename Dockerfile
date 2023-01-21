FROM postgres
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB world
COPY db/world.sql /docker-entrypoint-initdb.d/