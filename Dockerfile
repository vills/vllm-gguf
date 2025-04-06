# Use the official vLLM OpenAI compatible server image as the base
FROM vllm/vllm-openai:v0.8.3

# Update gguf library to version 0.12.0
# Uninstall any existing version first to ensure a clean install
RUN pip uninstall -y gguf && \
    pip install --no-cache-dir gguf==0.12.0

# The base image already sets up the entrypoint and default command,
# so we don't need to redefine them unless we want to change the behavior.