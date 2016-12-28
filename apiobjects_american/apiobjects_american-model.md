# apiobjects_american.json

## Add Column

## Add Node/Literal
#### Literal Node: `http://vocab.getty.edu/aat/300404621`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300264237`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300266036`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`


## PyTransforms
#### _ObjectLabel_
From column: _RECORDS / ObjectID_
``` python
return getValue("ObjectID")
```

#### _ObjectURI_
From column: _RECORDS / ObjectLabel_
``` python
return "object/" + getValue("ObjectID")
```

#### _ObjectID_URI_
From column: _RECORDS / ObjectLabel_
``` python
return getValue("ObjectURI") + "/id"
```

#### _MediumURI_
From column: _RECORDS / Medium_
``` python
return getValue("ObjectURI") + "/medium"
```

#### _DimensionsURI_
From column: _RECORDS / DimensionsLabel_
``` python
return getValue("ObjectURI") + "/dimensions"
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _DimensionsLabel_ | `rdf:value` | `crm:E33_Linguistic_Object2`|
| _DimensionsURI_ | `uri` | `crm:E33_Linguistic_Object2`|
| _Medium_ | `rdf:value` | `crm:E33_Linguistic_Object1`|
| _MediumURI_ | `uri` | `crm:E33_Linguistic_Object1`|
| _ObjectID_ | `rdf:value` | `crm:E42_Identifier1`|
| _ObjectID_URI_ | `uri` | `crm:E42_Identifier1`|
| _ObjectLabel_ | `rdfs:label` | `crm:E42_Identifier1`|
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E22_Man-Made_Object1` | `crm:P1_is_identified_by` | `crm:E42_Identifier1`|
| `crm:E22_Man-Made_Object1` | `crm:P67i_is_referred_to_by` | `crm:E33_Linguistic_Object1`|
| `crm:E22_Man-Made_Object1` | `crm:P67i_is_referred_to_by` | `crm:E33_Linguistic_Object2`|
| `crm:E33_Linguistic_Object1` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300264237`|
| `crm:E33_Linguistic_Object2` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300266036`|
| `crm:E42_Identifier1` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300404621`|
