##### Install Docker

```bash
sudo apt-get update
sudo apt-get install docker-io
```

##### Build & launch docker container

```bash
sudo docker build -t strix .
sudo docker run -v $PWD/workdir:/app -it strix /bin/bash
cd /app
```

##### Run an example
- To run strix type `./scripts/strix_tlsf.sh mod_arbiter.tlsf`. If a controller is realizable from the specification it will output a correct controller in HOA format, else will print UNREALIZABLE.
- To dump a `dot` file simply pass the HOA format to `autfilt` to generate a dot file. For getting dot file for `mod_arbiter` example run the following command.
    + `./scripts/strix_tlsf.sh mod_arbiter.tlsf | tail +5 | autfilt --dot`
- Use Graphviz web application for vizualization: https://dreampuf.github.io/GraphvizOnline/
