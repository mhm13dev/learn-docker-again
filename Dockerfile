FROM node:18-alpine3.16
WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm && pnpm install
COPY . .
EXPOSE 3000
CMD ["pnpm", "start"]
