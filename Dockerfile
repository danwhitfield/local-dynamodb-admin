FROM node:18.12.1

WORKDIR /app

RUN npm i -g dynamodb-admin

EXPOSE 8001

CMD ["dynamodb-admin"]
