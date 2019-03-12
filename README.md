# DockerTest2

I've done portions of this in the past, but never all at once from scratch.

* [x] Get a Dockerfile [from the web](https://raw.githubusercontent.com/c0b/docker-elixir/5570afaa6de095a86e98457e1ad1351f92ccfe26/1.8/Dockerfile)
* [x] Create a simple Phoenix app with `mix phx.new --no-ecto`
* [x] Put the app [on Github](https://github.com/JohnB/docker_test2)
* [x] Modify Dockerfile to clone and run my Phoenix app in a local docker container
  * `docker build .`
  * `docker run -p 4000:4000 882474eae819`
* [ ] Terraform up an ECS instance
* [ ] Get the docker container to run on the instance

## Helpful Aliases
```
alias run_it='docker run -p 4000:4000 -it '
alias runt='docker build .'
alias rut='docker run -p 4000:4000 '
```
