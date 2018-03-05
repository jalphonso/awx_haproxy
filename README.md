haproxy container used to load balance but more importantly for SSL Termination since AWX does not have built-in support for SSL yet

Instructions:
Replace certs/awx.pem content with your actual PEM data.
This PEM file must include both the public and private keys concatenated together

Then build the container with
```
docker build -t awx_haproxy .
```

Finally you can restart your AWX application after modifying the included docker-compose.yml file for your environment with
```
docker-compose down
docker-compose up
```

To update the AWX application while maintaining the haproxy integration, you can issue the following commands
```
docker-compose down
docker-compose pull --ignore-pull-failures
docker-compose up
```
