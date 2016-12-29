## apiconuris.json

### PyTransforms
#### _ConstituentURI_
From column: _RECORDS / ConstituentID_
>``` python
return "person-institution/"+getValue("ConstituentID")
```

#### _TypeURI_
From column: _RECORDS / URIType_
>``` python
return "thesauri/URIType/"+getValue("URIType")
```

#### _ActorAppellationURI_
From column: _RECORDS / ConstituentURI_
>``` python
return "person-institution/"+getValue("ConstituentID")+"/appellation"
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _ActorAppellationURI_ | `uri` | `E82_Actor_Appellation1`|
| _ConstituentURI_ | `uri` | `E39_Actor1`|
| _TypeURI_ | `uri` | `E55_Type1`|
| _URI_ | `rdfs:label` | `E82_Actor_Appellation1`|
| _URIType_ | `rdfs:label` | `E55_Type1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E39_Actor1` | `http://www.cidoc-crm.org/cidoc-crm/P131_is_identified_by` | `E82_Actor_Appellation1`|
| `E82_Actor_Appellation1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type1`|
