
"""
Company A Finance department requires historical exchange rate data for analysis.
This data is publicly available and a data source, MAS, was identified.

Web API:
https://eservices.mas.gov.sg/api/action/datastore/search.json?resource_id=3a5b73
2e-9490-4629-a398-d0c414204ee0

Tasks:
1. Request Web API
2. Get a response from all requests i.e. 100 records at most.
3. Convert it into the Dictionary
4. Handle the failed response

"""
import json
import requests
import os
# initialize defind variabled

base_url = 'https://eservices.mas.gov.sg/api/action/datastore/search.json'
resource_id = '3a5b732e-9490-4629-a398-d0c414204ee0'
offset = 0
limit = 100
source_record = []

# Iterate and fetch all records by changing the offset value as a parameter
# 2. Get a response from all requests i.e. 100 records at most.
while True:

    # request parameter
    params = {
        'resource_id': resource_id,
        'limit': limit,
        'offset': offset
    }

    # 1. Request Web API
    response = requests.get(base_url, params=params)

    # 4. Handle the failed response

    if (response.status_code == 200):
        data = response.json()

        records = data['result']['records']

        # If records are null or empty
        if not records:
            break

        source_record.extend(records)

        # now the update the offest value using limit
        offset += limit
    else:
        response = {
            "status_code": response.status_code,
            "status": "Error",
            "message": "Failed to fetch the response from end points"

        }
        print(response)
        break


# finally display on console first 5 records only
for record in source_record[:5]:
    print(record)

# or if we want to save into the file
with open(os.path.join(os.getcwd(), 'src/part_1_file.json'), 'w+') as fp:
    fp.write(json.dumps(source_record))
