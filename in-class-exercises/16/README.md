```bash
docker build -t course_project .  
docker run -it --rm -w $PWD -v $PWD:$PWD -p 9999:9999 course_project jupyter lab --port 9999
```
