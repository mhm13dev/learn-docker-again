FROM node:18-alpine3.16
RUN npm install -g pnpm
WORKDIR /app

# pnpm fetch does require only lockfile
COPY pnpm-lock.yaml ./
RUN pnpm fetch
ADD . ./
RUN pnpm install -r --offline

EXPOSE 3000
CMD ["pnpm", "start"]
