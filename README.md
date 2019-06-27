# Frontend CI/CD
## Docker commands
- To build the development Docker image (Dockerfile.dev) run: `docker build -f Dockerfile.dev .`<br> It returns an ID. If you want, you can tag the image with the following command: `docker build -f Dockerfile.dev -t raulcontrerasrubio/frontend-cicd .`
- To run the docker container, run the following command: `docker run -p 3000:3000 -v /home/app/react-client/node_modules -v "$(pwd):/home/app/react-client" [CONTAINER ID OR TAGGED IMAGE]`

## Run with Docker Compose
Instead of running all the commands above, run the next command: `docker-compose up`<br>
If you need to build everything again, use `docker-compose up --build`<br>
To stop all app containers, run: `docker-compose down`<br>
It's easy, right?

## Setup
Once you are running the Docker container, you can access the app at `http://localhost:3000`

## Another Docker commands
Just as a reminder, these are another commands that could be useful:
- `docker ps` Lists the containers that are started. To see all created containers run `docker ps --all`
- `docker system prune` Removes all cached images and containers
- `docker create [IMAGE]` Creates a container based on IMAGE
- `docker start [ID]` Run the container with the ID id
- `docker run [IMAGE]` Creates and runs a container based on IMAGE
