import json

import jsonschema
from jsonschema import Draft7Validator as d7, SchemaError
from jsonschema import Draft4Validator as d4
from datetime import datetime as dt
from datetime import timedelta as td
from NATSClient.nats_message import NATSMessage

schema_file = r'../CommandProcessor/schemas/init_simulation.schema'

with open(schema_file, 'r') as f:
    schema = json.loads(f.read())

main_res = {'filename': 'main.dss', 'contents': 'blahblah'}
sup_res = {'filename': 'sup.dss', 'relative_path': '.', 'contents': 'blahblah'}
sup_ress = [sup_res]

msg = NATSMessage('init_simulation')
msg.add_params('main_resource', main_res)
msg.add_params('supporting_resources', sup_ress)
now = dt.now().timestamp()
one_day_later = now + td(days=1).total_seconds()
msg.add_params('simulation_time', {'start_time': now, 'end_time': one_day_later, 'time_step': td(hours=1).total_seconds()})

print(msg.serialize_message())

try:
    d7.check_schema(schema)
except SchemaError as schemaError:
    print(schemaError)

validator = d7(schema)

try:
    validator.validate(msg.to_dict())
except jsonschema.exceptions.ValidationError as e:
    print("well-formed but invalid JSON:", e.message)
except json.decoder.JSONDecodeError as e:
    print("poorly-formed text, not JSON:", e)