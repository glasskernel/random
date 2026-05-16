FROM ghcr.io/ggml-org/llama.cpp:server

ENTRYPOINT []

ENV PORT=8080

CMD /app/llama-server \
  -hf TrevorJS/gemma-4-31B-it-uncensored-GGUF:Q4_K_M \
  --host 0.0.0.0 \
  --port 8080 \
  -c 4096 \
  -t 24 \
  --parallel 1
