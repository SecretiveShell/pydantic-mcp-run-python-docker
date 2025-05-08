FROM denoland/deno:alpine

WORKDIR /app
EXPOSE 3001

# Run the warmup to download the server and cache Python packages
RUN deno run \
  --allow-net --allow-read=node_modules --allow-write=node_modules \
  --node-modules-dir=auto \
  jsr:@pydantic/mcp-run-python warmup

# Start the server in SSE mode
CMD ["deno", "run", "--allow-net", "--allow-read=node_modules", "--allow-write=node_modules", "--node-modules-dir=auto", "jsr:@pydantic/mcp-run-python", "sse"]
