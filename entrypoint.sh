#!/bin/sh


if [ $EXAMPLE_APP_CONTAINER_RUN_FOR_EVER = "True" ]
    then
        tail -f /dev/null
elif [  $EXAMPLE_APP_CONTAINER_RUN_FOR_EVER = "False" ]
    then
        python run.py
fi
