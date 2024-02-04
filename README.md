# Dockerise-React-App-with-nginx
react-routes configured with nginx inside a docker container

sample React app with routes configured via nginx conf file. following error shows up with nginx -

<img width="600" alt="Screenshot 2024-02-04 at 11 13 18 AM" src="https://github.com/ksukhleen/Dockerise-React-App-with-nginx/assets/35762394/0e5ab7a3-3a06-4ec6-a68e-13c03b905d0c">

<img width="200" height="200" alt="Screenshot 2024-02-04 at 11 13 18 AM" src="https://github.com/ksukhleen/Dockerise-React-App-with-nginx/assets/35762394/2bfd8836-6912-48c1-835b-70265910844d">


### `Steps for setup`

1. Clone the repository and run command "docker-compose up --build" in the folder's terminal.
2. to remove nginx error, uncomment the location block in nginx.conf file and rerun the above command.

