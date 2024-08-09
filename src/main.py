import os
from flask import Flask
from qdrant_client import QdrantClient

app = Flask(__name__)

qdrant_host = os.environ.get("QDRANT_HOST", "http://localhost")
qdrant_port = int(os.environ.get("QDRANT_PORT", 6333))
client = QdrantClient(qdrant_host, port=qdrant_port)

@app.route('/')
def get_collections():
    collections = client.get_collections()
    app.logger.info(f"a request recieved")
    return f"Connected to Qdrant at {qdrant_host}:{qdrant_port}. Available collections: {collections}"

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=5001, use_reloader=True)