# docker-mit-scratch-gui
A Dockerfile that works.

## Usage
- Build image by
```
docker build https://github.com/BaksiLi/docker-mit-scratch-gui.git#main
```


- Run by
```
docker run -d -p 8601:8601 --name scratch-gui <image-id>
```

## Nota Bene
If you are running scratch-gui with a hostname, e.g. NGROK, domain, other than `localhost:8601`, you will have **Invalid Host header** problem.
```
docker exec -u 0 -it <container-id> /bin/sh
```
and follow [this](https://github.com/LLK/scratch-gui/issues/5682#issuecomment-1097025634) to mod webpackserver.
