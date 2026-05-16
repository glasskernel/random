FROM ghcr.io/ggml-org/llama.cpp:server

ENV LLAMA_THREADS=32
ENV CONTEXT_SIZE=8192
ENV MODEL_REPO=TrevorJS/gemma-4-31B-it-uncensored-GGUF
ENV MODEL_QUANT=Q4_K_M

CMD llama-server \
  -hf ${MODEL_REPO}:${MODEL_QUANT} \
  --host 0.0.0.0 \
  --port ${PORT:-8080} \
  -c ${CONTEXT_SIZE} \
  -t ${LLAMA_THREADS} \
  --parallel 1
