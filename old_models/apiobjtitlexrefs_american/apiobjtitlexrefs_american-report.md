## apiobjtitlexrefs_american.json

### PyTransforms
#### _TitleURI_
From column: _RECORDS / TitleID_
>``` python
return "title/" + getValue("TitleID")
```

#### _TitleTypeURI_
From column: _RECORDS / TitleType_
>``` python
return "thesauri/title-type/" + getValue("TitleType").lower().replace(" ","-")
```

#### _ObjectURI_
From column: _RECORDS / ObjectID_
>``` python
return "object/"+getValue("ObjectID")
```

#### _AltObjectURI_
From column: _RECORDS / ObjectURI_
>``` python
return "artmuseum.princeton.edu/collections/object/"+getValue("ObjectID")
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _AltObjectURI_ | `rdfs:label` | `E42_Identifier1`|
| _ObjectURI_ | `uri` | `E22_Man-Made_Object1`|
| _Title_ | `rdfs:label` | `E35_Title1`|
| _TitleType_ | `rdfs:label` | `E55_Type1`|
| _TitleTypeURI_ | `uri` | `E55_Type1`|
| _TitleURI_ | `uri` | `E35_Title1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P102_has_title` | `E35_Title1`|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P48_has_preferred_identifier` | `E42_Identifier1`|
| `E35_Title1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type1`|
