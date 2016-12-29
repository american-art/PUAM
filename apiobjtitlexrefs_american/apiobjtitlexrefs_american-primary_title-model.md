# apiobjtitlexrefs_american.json

## Add Column

## Add Node/Literal
#### Literal Node: `http://vocab.getty.edu/aat/300404012`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300404670`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`


## PyTransforms
#### _ObjectURI_
From column: _RECORDS / ObjectID_
``` python
return "object/" + getValue("ObjectID")
```

#### _TitleLabel_
From column: _RECORDS / Title_
``` python
return getValue("Title")
```

#### _TitleURI_
From column: _RECORDS / ObjectURI_
``` python
def cleanURI(prefix, value):
    uri_value = value.lower().replace(' ', '_')
    return UM.uri_from_fields(prefix + uri_value)
prefix = getValue("ObjectURI") + "/"
titleType = getValue("TitleType")
if titleType:
    return cleanURI(prefix,titleType)
else:
    return ""
```

#### _TitleIDURI_
From column: _RECORDS / TitleID_
``` python
return getValue("TitleURI") + "/id/" + getValue("TitleID")
```


## Selections
#### _DEFAULT_TEST_
From column: _RECORDS / ObjectURI_
<br>Operation: `Union`
``` python
return getValue("TitleType") != "Primary Title"
```


## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|
| _Title_ | `rdf:value` | `crm:E35_Title1`|
| _TitleID_ | `rdf:value` | `crm:E42_Identifier1`|
| _TitleIDURI_ | `uri` | `crm:E42_Identifier1`|
| _TitleLabel_ | `rdfs:label` | `crm:E22_Man-Made_Object1`|
| _TitleURI_ | `uri` | `crm:E35_Title1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E22_Man-Made_Object1` | `crm:P102_has_title` | `crm:E35_Title1`|
| `crm:E35_Title1` | `crm:P1_is_identified_by` | `crm:E42_Identifier1`|
| `crm:E35_Title1` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300404670`|
| `crm:E42_Identifier1` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300404012`|
