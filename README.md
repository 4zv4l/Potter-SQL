# Potter-SQL
A CTF about Harry Potter and SQL Injection
> Thanks to @Julienpeps for the idea and inspiration

# How to Run
`perl app.plx`  
This will start the web server on port `8080`

# Container
To build the image use  
`podman -t potter_ctf .`  
- This might take some minutes to install the dependencies

Then  
`podman run --rm --name ctf -p 8080:8080 localhost/potter_ctf:latest`
