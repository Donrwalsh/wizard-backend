version: '3.8'
services:
  api:
    build: .
    volumes:
      - .:/app
      - /app/node_modules
    ports:
      - 3000:3000
    command: npm run start
    