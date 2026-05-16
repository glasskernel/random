FROM ghcr.io/ggml-org/llama.cpp:server

ENTRYPOINT []

ENV LLAMA_THREADS=32
ENV CONTEXT_SIZE=8192

CMD /app/llama-server \
  -hf TrevorJS/gemma-4-31B-it-uncensored-GGUF:Q4_K_M \
  --host 0.0.0.0 \
  --port ${PORT:-8080} \
  -c ${CONTEXT_SIZE} \
  -t ${LLAMA_THREADS} \
  --parallel 1
