This container runs iPython + all the necessary dependencies necesary to run google' deep dream.

you can start the container by running:

```
docker run -d -p 80:8888 --net=host -e "PASSWORD=pass"  --name ipython-dream -v  $(pwd)/notebooks:/notebooks -v $(pwd)/photos/:/photos -it javierbq/googledream
```

if you are using boot2docker on OS X you can log into ipython by running:
```
docker run -d -p 80:8888 --net=host -e "PASSWORD=pass"  --name ipython-dream -v  $(pwd)/notebooks:/notebooks -v $(pwd)/photos/:/photos -it javierbq/googledream
sleep 5
open -a Safari http://`boot2docker ip 2> /dev/null`:8888
```
