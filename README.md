##### Install Docker

```bash
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
```

##### Build & launch docker container

```bash
sudo docker build -t strix .
sudo docker run -it strix
```

To check if strix is installed correctly run `strix --version`
