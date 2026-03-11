FROM ghcr.io/1rgs/claude-code-proxy:main

RUN uv export --format requirements.txt --output-file requirements.txt
RUN pip install -r requirements.txt

CMD uvicorn server.main:app --host 0.0.0.0 --port 8082 --reload
