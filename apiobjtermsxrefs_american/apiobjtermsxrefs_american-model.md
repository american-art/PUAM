# apiobjtermsxrefs_american.json

## Add Column

## Add Node/Literal

## PyTransforms
#### _ObjectURI_
From column: _RECORDS / ObjectID_
``` python
return "object/"+getValue("ObjectID")
```

#### _TermURI_
From column: _RECORDS / TermID_
``` python
if getValue("ThesXrefType")=="Subject":
    return UM.uri_from_fields("thesauri/term_id/",getValue("TermID"))
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|
| _Term_ | `rdfs:label` | `owl:Thing1`|
| _TermURI_ | `uri` | `owl:Thing1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E22_Man-Made_Object1` | `crm:P62_depicts` | `owl:Thing1`|
