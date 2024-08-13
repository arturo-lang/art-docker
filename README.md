# art-docker

Docker image for Arturo

----

Want to run Arturo's REPL with a single command? There is a Docker image for that.

Just open the terminal and type:

`docker run -it arturolang/arturo`

or (to run a specific local script)

`docker run -it -v $(pwd):/home arturolang/arturo <yourscript.art>`

> [!TIP]
> If, for some reason, you want to access the lighter MINI build, all you'd have to do is use the Docker image with the appropriate tag; that is:
> `docker run -it arturolang/arturo:mini`

That was it. Rock on! ;) 