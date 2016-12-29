## apiobjbibxrefs_american.json

### PyTransforms
#### _ReferenceURI_
From column: _RECORDS / ReferenceID_
>``` python
return "reference/"+getValue("ReferenceID")
```

#### _ObjectURI_
From column: _RECORDS / ObjectID_
>``` python
return "object/"+getValue("ObjectID")
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _CitationHTML_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E33_Linguistic_Object1`|
| _ObjectURI_ | `uri` | `E22_Man-Made_Object1`|
| _ReferenceURI_ | `uri` | `E31_Document1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P70i_is_documented_in` | `E31_Document1`|
| `E33_Linguistic_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P129_is_about` | `E31_Document1`|
