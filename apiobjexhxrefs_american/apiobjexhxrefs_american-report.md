## apiobjexhxrefs_american.json

### PyTransforms
#### _ObjectURI_
From column: _RECORDS / ObjectID_
>``` python
return "object/"+getValue("ObjectID")
```

#### _AltObjectURI_
From column: _RECORDS / ObjectURI_
>``` python
return "artmuseum.princeton.edu/collections/object/" + getValue("ObjectID")
```

#### _ExhibitionURI_
From column: _RECORDS / ExhibitionID_
>``` python
return "exhibition/"+getValue("ExhibitionID")
```

#### _ExhCitationURI_
From column: _RECORDS / ExhCitation_
>``` python
return getValue("ExhibitionURI")+"/citation"
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _AltObjectURI_ | `rdfs:label` | `E42_Identifier1`|
| _ExhCitation_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E33_Linguistic_Object1`|
| _ExhCitationURI_ | `uri` | `E33_Linguistic_Object1`|
| _ExhibitionURI_ | `uri` | `E7_Activity1`|
| _ObjectURI_ | `uri` | `E22_Man-Made_Object1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P12i_was_present_at` | `E7_Activity1`|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P48_has_preferred_identifier` | `E42_Identifier1`|
| `E33_Linguistic_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P129_is_about` | `E7_Activity1`|
