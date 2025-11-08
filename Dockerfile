FROM node:24-alpine3.22

WORKDIR /app

RUN corepack enable pnpm

COPY . .

RUN pnpm install

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["/entrypoint.sh"]
