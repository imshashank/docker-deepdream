#!/bin/bash
docker pull javierbq/googledream
docker run -d -p 80:8888 --net=host -e "PASSWORD=pass"  --name ipython-dream -v  $(pwd)/notebooks:/notebooks -v $(pwd)/photos/:/photos -it javierbq/googledream
sleep 5
open -a Safari http://`boot2docker ip 2> /dev/null`:8888
