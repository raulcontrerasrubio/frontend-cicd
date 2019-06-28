FROM node:12.4.0-alpine as builder
WORKDIR /home/prod/react-client
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /home/prod/react-client/build /usr/share/nginx/html