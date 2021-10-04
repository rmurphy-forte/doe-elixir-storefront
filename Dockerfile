FROM bitwalker/alpine-elixir-phoenix

WORKDIR /code

# Set exposed ports
EXPOSE 8080
ENV PORT=8080 
ENV MIX_ENV=prod
ENV SECRET_KEY_BASE=xXQqmxiyf8c5XkJ3I9KiJnaD6EbxwAnN7YHXWUVVTXWR4VYlvk916ROr/eOOBlwk
ENV DATABASE_URL=ecto://postgres:postgres@storedb/postgres

RUN yes | mix local.hex
RUN yes | mix archive.install hex phx_new

WORKDIR /code/store

ENTRYPOINT ["mix", "phx.server"]
