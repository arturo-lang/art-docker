# art-docker

Docker image for Arturo

----

Want to run Arturo's REPL with a single command? There is a Docker image for that.

Just open the terminal and type:

`docker run -ti arturolang/arturo`

or (to run a specific local script)

`docker run -it -v $(pwd):/root arturolang/arturo arturo <yourscript.art>`

That was it. Rock on! ;)
