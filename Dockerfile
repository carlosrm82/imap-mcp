FROM python:3.11-slim
WORKDIR /app
RUN pip install uv
COPY . .
RUN uv pip install --system -e .
EXPOSE 8000
CMD ["python", "-m", "imap_mcp.server"]
