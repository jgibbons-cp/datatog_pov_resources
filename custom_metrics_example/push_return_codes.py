from datadog import initialize, api
import os, random, sys, time

api_key = os.environ.get('API_KEY')
app_key = os.environ.get('APP_KEY')

options = {'api_key': api_key,
           'app_key': app_key}

initialize(**options)

min=-1
max=1
SECONDS=120

while True:
    ret_val = random.randint(min,max)

    # Submit a point with a host and tags.
    api.Metric.send(
        metric='process_exit_code',
        points=ret_val,
        tags=["pov_datadog"]
    )

    time.sleep(SECONDS)
