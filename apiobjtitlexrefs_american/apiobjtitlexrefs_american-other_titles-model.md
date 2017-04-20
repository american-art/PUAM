# apiobjtitlexrefs_american.json

## Add Column

## Add Node/Literal

## PyTransforms
#### _ObjectURI_
From column: _RECORDS / ObjectID_
``` python
return "object/" + getValue("ObjectID")
```

#### _TitleURI_
From column: _RECORDS / ObjectURI_
``` python
def cleanURI(prefix, value):
    uri_value = value.lower().replace(' ', '_')
    return UM.uri_from_fields(prefix + uri_value)
titleType = getValue("TitleType")
prefix = getValue("ObjectURI") + "/"
if titleType:
    return getValue("ObjectURI")+"/title/"+getValue("TitleID")
else:
    return ""
```

#### _TitleID_URI_
From column: _RECORDS / TitleID_
``` python
return getValue("TitleURI") + "/id"
```

#### _TitleTypeURI_
From column: _RECORDS / ObjectID_
``` python
return getValue("TitleURI") + "/title_type"
```


## Selections
#### _DEFAULT_TEST_
From column: _RECORDS / Title_
<br>Operation: `Union`
``` python
return getValue("TitleType") == "Primary Title" or getValue("TitleType") == "(not entered)"
```


## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|
| _Title_ | `rdf:value` | `crm:E35_Title1`|
| _TitleType_ | `skos:prefLabel` | `crm:E55_Type1`|
| _TitleTypeURI_ | `uri` | `crm:E55_Type1`|
| _TitleURI_ | `uri` | `crm:E35_Title1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E22_Man-Made_Object1` | `crm:P102_has_title` | `crm:E35_Title1`|
| `crm:E35_Title1` | `crm:P2_has_type` | `crm:E55_Type1`|
