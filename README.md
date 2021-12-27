##### Install Docker

```bash
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
```

##### Build & launch docker container

```bash
sudo docker build -t strix .
docker run -v $PWD/workdir:/app -it strix /bin/bash
cd /app
```

To check if **strix** is installed correctly run `strix --version`
