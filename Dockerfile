FROM node:24-slim AS builder

WORKDIR /app
COPY package*.json ./
RUN npm ci

COPY . .

FROM node:24-slim

WORKDIR /app

ENV NODE_ENV=production

COPY --from=builder /app /app

RUN npm ci --omit=dev && npm cache clean --force

EXPOSE 3000

CMD ["node", "app/app.js"]