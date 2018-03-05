haproxy container used to load balance but more importantly for SSL Termination since AWX does not have built-in support for SSL yet
Instructions:
Replace certs/awx.pem content with your actual PEM data.
This PEM file must include both the public and private keys concatenated together
Then build the container with
```
docker build -t awx_haproxy .
```
