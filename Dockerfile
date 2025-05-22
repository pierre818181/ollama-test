ARG OLLAMA_VERSION=0.5.7

# Use an official base${OLLAMA_VERSION} image with your desired version
FROM ollama/ollama:${OLLAMA_VERSION}

RUN chmod +x /work/start.sh

ENTRYPOINT ["/bin/sh", "-c", "/work/start.sh"]
