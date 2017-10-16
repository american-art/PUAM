import json
import codecs

input_file_path = './apiobjects_american.json'
output_file_path = './apiobjects_american.jl'

with codecs.open(input_file_path, 'r') as input:
    with codecs.open(output_file_path, 'w') as output:
        data = json.loads(input.read())
	for obj in data['RECORDS']:
            output.write(json.dumps(obj) + '\n')

