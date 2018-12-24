```
docker build -t line-beacon .
docker run --net=host -e HWID='01 DE AD BE EF' line-beacon
```