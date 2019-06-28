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

## Run React tests
1. Start your app with `docker-compose up`
2. On another terminal, run `docker ps` and get the container id.
3. Execute the next command to run the test suite: `docker exec -it [ID] npm run test`

Another option is running a second service declarated on docker-compose file which is only responsible of running the test suite.

## Run for production
1. Create the image and get the id `docker build .`
2. Run the new container with `docker run -p [PORT]:80 [ID]` where PORT is, for example, 8080
3. Go into your production app at `http://localhost:[PORT]`

## Deploy to the real world
- Once you have configured TravisCI with the .travis.yml file, you must configure the following AWS services: Elastic Beanstalk, S3, IAM
- You must expose the port 80 on your Dockerfile. 
Now, when a change is made to master branch, TravisCI will run the tests and, if everything went OK, TravisCI will start the deployment to AWS.

## Another Docker commands
Just as a reminder, these are another commands that could be useful:
- `docker ps` Lists the containers that are started. To see all created containers run `docker ps --all`
- `docker system prune` Removes all cached images and containers
- `docker create [IMAGE]` Creates a container based on IMAGE
- `docker start [ID]` Run the container with the ID id
- `docker run [IMAGE]` Creates and runs a container based on IMAGE
