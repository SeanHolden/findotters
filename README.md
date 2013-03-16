findotters
==========

env[:hack] app. Hack that involves playing with otter sighting data.

##Importing survey data to database
Assuming the CSV file is in your public directory (it is there by default) ... Just run:
```
$ rake otter_survey_to_db:import
```

##Making a query:
Just perform a GET request to the following URL, replacing the latitude and longitude params to whatever you like.
```
http://otterspotter.herokuapp.com/otters?topLat=51.842574&topLong=-2.164328&bottomLat=51.055216&bottomLong=-3.043234
```