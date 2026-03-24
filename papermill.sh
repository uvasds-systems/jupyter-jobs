#!/bin/bash

# papermill earthquakes.ipynb output.ipynb

# papermill earthquakes.ipynb /dev/null

day_before_yesterday=`date -d "2 days ago" +%Y-%m-%d`
yesterday=`date -d "yesterday" +%Y-%m-%d`

papermill earthquakes.ipynb output.ipynb -p starttime $day_before_yesterday -p endtime $yesterday

