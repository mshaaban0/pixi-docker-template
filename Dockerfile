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

EXPOSE 5001 9999

# Create a script to run both Flask and Jupyter Lab
RUN echo '#!/bin/bash\npixi run start & pixi run jupyter' > /app/start.sh && chmod +x /app/start.sh

# Use the script as the entry point
CMD ["/app/start.sh"]

# CMD ["pixi", "run", "start"]