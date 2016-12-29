## apibibaltnums.json

### PyTransforms
#### _ReferenceURI_
From column: _RECORDS / ReferenceID_
>``` python
return "reference/"+getValue("ReferenceID")
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _AltNum_ | `rdfs:label` | `E75_Conceptual_Object_Appellation1`|
| _ReferenceURI_ | `uri` | `E31_Document1`|
| _Type_ | `rdfs:label` | `E55_Type1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E31_Document1` | `http://www.cidoc-crm.org/cidoc-crm/P149_is_identified_by` | `E75_Conceptual_Object_Appellation1`|
| `E75_Conceptual_Object_Appellation1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type1`|
