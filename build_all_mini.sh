# use --no-cache for clean re-build
docker build -f Dockerfile-mini -t arturo-mini .
docker run -ti arturo-mini