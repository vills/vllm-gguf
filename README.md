# Custom vLLM OpenAI Container with Updated GGUF

This repository provides a Dockerfile to build a custom version of the `vllm/vllm-openai` container.

## Changes

*   Base Image: `vllm/vllm-openai:v0.8.3`
*   Updated `gguf` library to version `0.12.0`.

## Build Instructions

To build the Docker image, run the following command in the directory containing the Dockerfile:

```bash
docker build -t custom-vllm-openai:latest .
```

## Usage

You can run the container like the original `vllm/vllm-openai` image. Refer to the [vLLM documentation](https://docs.vllm.ai/en/latest/getting_started/quickstart.html) for usage examples.

Example:

```bash
docker run --gpus all -p 8000:8000 --env MODEL_NAME=mistralai/Mistral-7B-Instruct-v0.1 custom-vllm-openai:latest
```

Replace `mistralai/Mistral-7B-Instruct-v0.1` with the desired model.