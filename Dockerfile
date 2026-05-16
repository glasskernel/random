FROM ghcr.io/ggml-org/llama.cpp:server

ENV LLAMA_THREADS=32
ENV CONTEXT_SIZE=8192
ENV MODEL_REPO=TrevorJS/gemma-4-31B-it-uncensored-GGUF
ENV MODEL_QUANT=Q4_K_M

CMD ["-hf", "TrevorJS/gemma-4-31B-it-uncensored-GGUF:Q4_K_M", "--host", "0.0.0.0", "--port", "8080", "-c", "8192", "-t", "32", "--parallel", "1"]
