FROM python:3.10-slim
WORKDIR /app
RUN apt-get update && apt-get install -y ssh && apt-get clean
RUN pip3 install ansible kubernetes && ansible-galaxy collection install kubernetes.core
ENTRYPOINT ["/usr/local/bin/ansible"]
