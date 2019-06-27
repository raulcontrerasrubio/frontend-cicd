# Frontend CI/CD
## Docker commands
- To build the development Docker image (Dockerfile.dev) run: `docker build -f Dockerfile.dev .`<br> It returns an ID. If you want, you can tag the image with the following command: `docker build -f Dockerfile.dev -t raulcontrerasrubio/frontend-cicd .`
- To run the docker container, run the following command: `docker run -p 3000:3000 -v /home/app/react-client/node_modules -v "$(pwd):/home/app/react-client" [CONTAINER ID OR TAGGED IMAGE]`

## Setup
Once you are running the Docker container, you can access the app at `http://localhost:3000`
