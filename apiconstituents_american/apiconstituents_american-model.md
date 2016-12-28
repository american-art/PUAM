# apiconstituents_american.json

## Add Column

## Add Node/Literal
#### Literal Node: `http://vocab.getty.edu/aat/300404670`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`


## PyTransforms
#### _ConstituentURI_
From column: _RECORDS / ConstituentID_
``` python
return "constituent/" + getValue("ConstituentID")
```

#### _ConstituentLabel_
From column: _RECORDS / ConstituentID_
``` python
return getValue("ConstituentID")
```

#### _ConstituentID_URI_
From column: _RECORDS / ConstituentLabel_
``` python
return getValue("ConstituentURI") + "/id"
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _ConstituentID_ | `rdf:value` | `crm:E42_Identifier1`|
| _ConstituentID_URI_ | `uri` | `crm:E42_Identifier1`|
| _ConstituentLabel_ | `rdfs:label` | `crm:E42_Identifier1`|
| _ConstituentURI_ | `uri` | `crm:E39_Actor1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E39_Actor1` | `crm:P1_is_identified_by` | `crm:E42_Identifier1`|
| `crm:E42_Identifier1` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300404670`|
