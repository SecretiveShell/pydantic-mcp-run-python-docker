# pydantic-mcp-run-python-docker

Dockerfile for [pydantic's mcp-run](https://github.com/pydantic/pydantic-ai/tree/main/mcp-run-python)

## Usage

Run the server:

```bash
docker compose up
```

This will expose the server on port `127.0.0.1:8000` on your host machine.

You can then connect to the server from your mcp client using the following URL:

```
http://127.0.0.1:8000/sse
```

I would suggest using [wong2/mcp-cli](https://github.com/wong2/mcp-cli) to connect to the server.

```bash
npx wong2/mcp-cli --sse http://127.0.0.1:8000/sse
```

## License

MIT