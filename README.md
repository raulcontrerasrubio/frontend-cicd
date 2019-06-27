# Frontend CI/CD
## Docker commands
- To build the development Dockerfile (Dockerfile.dev): `docker build -f Dockerfile.dev .`. It returns an ID. If you want, you can tag the image with the following command: `docker build -f Dockerfile.dev -t raulcontrerasrubio/frontend-cicd .`
- To run the docker container, run the following command: `docker run -p 3000:3000 -v /home/app/react-client/node_modules -v "$(pwd):/home/app/react-client" [CONTAINER ID OR TAGGED IMAGE]`