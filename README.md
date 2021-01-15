# art-docker

Docker image for Arturo

----

Want to run Arturo's REPL with a single command? There is a Docker image for that.

Just open the terminal and type:

`docker run -it arturolang/arturo`

or (to run a specific local script)

`docker run -it -v $(pwd):/home arturolang/arturo <yourscript.art>`

That was it. Rock on! ;)
