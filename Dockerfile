# Deliberately imperfect demo image for Sysdig scanning.
# Older slim base on purpose: it carries known CVEs so the scan has findings.
FROM python:3.9-slim

# Bad practice: ADD instead of COPY.
ADD . /foo
WORKDIR /foo

# Bad practice: secrets in environment variables (fake values — demo only).
ENV AWS_ACCESS_KEY_ID=foobar
ENV AWS_SECRET_ACCESS_KEY=my_key
ENV AWS_DEFAULT_REGION=my_region

# Bad practice: installing packages at build time.
RUN pip install requests

# Bad practice: running as the default root user.
ENTRYPOINT ["python", "./app.py"]
