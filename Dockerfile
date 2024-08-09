FROM ghcr.io/prefix-dev/pixi:0.18.0

WORKDIR /app

# Copy pixi.toml and pyproject.toml first
COPY pixi.toml ./

# Then copy the rest of your application
COPY . .

RUN pixi install

ENV FLASK_APP=src/main.py
ENV FLASK_ENV=development
ENV FLASK_DEBUG=1

CMD ["pixi", "run", "start"]