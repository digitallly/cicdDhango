#!/bin/bash

if [-d "env"]
then
echo "python virtual env exist"
else
    python3 -m venv env
fi

echo $PWD
source env/bin/activate

pip3 install -r requirments.txt

if [-d "logs"]
then
echo "log exist"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
echo "envsetup finished"