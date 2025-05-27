ARG OLLAMA_VERSION=0.5.7

# Use an official base${OLLAMA_VERSION} image with your desired version
FROM ollama/ollama:${OLLAMA_VERSION}

WORKDIR /work

COPY . .

RUN chmod +x /work/script.sh

RUN uv run pip install runpod

ENTRYPOINT ["/bin/sh", "-c", "/work/script.sh"]
