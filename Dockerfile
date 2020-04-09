FROM node:alpine as builder
WORKDIR /home/client
COPY package*.json ./
RUN npm install
COPY ./ ./
RUN npm run build

FROM nginx
# It is important to expose the port 80 because we do not run our app using the docker run -p 80:80 [image] command
EXPOSE 80
COPY --from=builder /home/client/build /usr/share/nginx/html