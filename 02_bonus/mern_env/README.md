# MERN stack

## Dockerfiles

### React.js Frontend

We can simply build our Frontend with this command (inside ./client/):

` docker build -t react-app . `

To verify everything is fine, we run our newly built container using the command: ` docker run -p 3000:3000 react-app . ` This will run just the Frontend.

### Node Express Backend

We can simply build our Backend with this command (inside ./server/):

` docker build -t node-app . `

To verify everything is fine, we run our newly built container using the command: ` docker run -p 5000:5000 node-app . ` This will run the Backend.

## Creating the Build

To create the build for the entire application, we need to run the following command:

` docker-compose build `

## Starting the Services

We can start the multi-container system using the following simple command:

` docker-compose up `

At last, we can open http://localhost:3000 to see our React Frontend.

The backend server is live on http://localhost:5000

And MongoDB is running on http://localhost:27017

## Maintenance & Inspection

We can inspect running services using the `docker-compose ps` command.

The `docker-compose logs` will dump logs of all the running services.

## Stopping the containers

To stop all the services, we use `docker-compose stop`.

Using `docker-compose down --volumes` brings everything down, removing the containers entirely, with the data volume of the services.
