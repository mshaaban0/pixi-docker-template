# Python Project Boilerplate with Pixi, Flask, Jupyter Notebook, and Docker Compose

This repository provides a boilerplate for new Python projects using Pixi for dependency management and Docker Compose for containerization. It includes a basic Flask application connected to a Qdrant vector database, as well as Jupyter Notebook for interactive development and data exploration.

## Features

- Python project structure with Pixi for dependency management
- Docker Compose setup for easy development and deployment
- Flask web application with hot-reloading for rapid development
- Qdrant vector database integration
- Watchdog for efficient file change detection in Docker
- Jupyter Notebook for interactive development and data analysis

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Pixi](https://github.com/prefix-dev/pixi) (Optional: for local development without Docker)

## Getting Started

### Clone the Repository

```bash
git clone git@github.com:mshaaban0/pixi-docker-template.git
cd pixi-docker-template
```

### Running with Docker Compose

1. Build and start the containers:

```bash
docker compose up --build
```

2. Access the Flask application at `http://localhost:5001`

3. Access Jupyter Notebook at `http://localhost:9999` (token is in the terminal output)

4. Qdrant Dashboard at `http://localhost:6333/dashboard`

5. To stop the containers, press `Ctrl+C` in the terminal or run:

```bash
docker compose down
```

### Local Development with Pixi (Optional)

1. Install dependencies:

```bash
pixi install
```

2. Run the Flask application:

```bash
pixi run python src/main.py
```

3. Run Jupyter Notebook:

```bash
pixi run jupyter lab
```

4. Access the Flask application at `http://localhost:5001`

5. Access Jupyter Notebook at `http://localhost:9999`

## Project Structure

```
.
├── .dockerignore
├── .gitignore
├── docker-compose.yml
├── Dockerfile
├── pixi.toml
├── README.md
├── src
│   └── main.py
└── notebooks
    └── example.ipynb
```

## Configuration

- `pixi.toml`: Manages Python dependencies and project metadata
- `Dockerfile`: Defines the Docker image for the Python application
- `docker-compose.yml`: Orchestrates the application, Qdrant services, and Jupyter Notebook
- `src/main.py`: Entry point for the Flask application
- `notebooks/`: Directory for Jupyter notebooks

## Development

The project is set up with hot-reloading, allowing you to see changes immediately without restarting the container. Simply edit the files in the `src` directory, and the application will reload automatically.

For data analysis and exploratory work, use Jupyter Notebook. You can create new notebooks in the `notebooks/` directory, which will be persisted even after stopping the Docker containers.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Pixi](https://github.com/prefix-dev/pixi) for dependency management
- [Flask](https://flask.palletsprojects.com/) for the web framework
- [Qdrant](https://qdrant.tech/) for vector similarity search
- [Docker](https://www.docker.com/) for containerization
- [Jupyter](https://jupyter.org/) for interactive computing
