import json
import codecs

with codecs.open('apiobjtermsxrefs_american.json', 'r') as f:
    objs = json.loads(f.read())['RECORDS']

with codecs.open('apiobjtermsxrefs_american.json.jl', 'w') as f:
    for obj in objs:
        f.write(json.dumps({'RECORDS': [obj]}) + '\n')
