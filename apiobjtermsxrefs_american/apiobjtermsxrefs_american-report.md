## apiobjtermsxrefs_american.json

### PyTransforms
#### _TermURI_
From column: _RECORDS / TermID_
>``` python
return "term/"+getValue("TermID")
```

#### _TypeURI_
From column: _RECORDS / ThesXrefType_
>``` python
return "thesauri/type/"+getValue("ThesXrefType").lower().replace(" ","-")
```

#### _TermNote_
From column: _RECORDS / Term_
>``` python
return getValue("ThesXrefType") + ": " +getValue("Term")
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
| _Term_ | `rdfs:label` | `E28_Conceptual_Object1`|
| _TermNote_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E33_Linguistic_Object1`|
| _TermURI_ | `uri` | `E28_Conceptual_Object1`|
| _ThesXrefType_ | `rdfs:label` | `E55_Type1`|
| _TypeURI_ | `uri` | `E55_Type1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P48_has_preferred_identifier` | `E42_Identifier1`|
| `E28_Conceptual_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type1`|
| `E33_Linguistic_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P129_is_about` | `E22_Man-Made_Object1`|
