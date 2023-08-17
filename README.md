# local-dynamodb-admin

Dockerized version of [dynamodb-admin](https://github.com/aaronshaf/dynamodb-admin) for local development

## Usage

### Docker Build

```bash
docker build -t local-dynamodb-admin:1.0 .
```

### Docker Compose

```yaml
  dynamodb-admin:
    image: local-dynamodb-admin:1.0
    environment:
      - AWS_REGION=ap-southeast-2
      - AWS_ACCESS_KEY_ID=local
      - AWS_SECRET_ACCESS_KEY=local
      - DYNAMO_ENDPOINT=http://localstack:4566
    ports:
      - '8001:8001'
    depends_on:
      - localstack
    networks:
      - default
```
