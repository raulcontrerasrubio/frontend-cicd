FROM node:alpine as builder
WORKDIR /home/client
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
COPY --from=builder /home/client/build /usr/share/nginx/html