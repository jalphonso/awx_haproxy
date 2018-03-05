haproxy container used to lb but more importantly for SSL Termination since AWX does not have built for SSL yet
Instructions:
create a directory called certs and place your cert in there named awx.pem
This PEM file must include both the public and private keys concatenated together
