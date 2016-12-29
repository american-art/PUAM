## apiobjconxrefs_american.json

### PyTransforms
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

#### _ConstituentURI_
From column: _RECORDS / ConstituentID_
>``` python
return "person-institution/"+getValue("ConstituentID")
```

#### _ProductionURI_
From column: _RECORDS / ConstituentURI_
>``` python
return getValue("ObjectURI")+"/production"
```

#### _ActorRole_
From column: _RECORDS / Role_
>``` python
if getValue("Role"):
    return getValue("Role")  + ": "+getValue("DisplayName")
```

#### _DisplayBioURI_
From column: _RECORDS / DisplayBio_
>``` python
if getValue("DisplayBio"):
    return getValue("ConstituentURI")+"/DisplayBio"
```

#### _ActorAppellationURI_
From column: _RECORDS / DisplayName_
>``` python
return getValue("ConstituentURI")+"/appellation"
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _ActorAppellationURI_ | `uri` | `E82_Actor_Appellation1`|
| _ActorRole_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E12_Production1`|
| _AltObjectURI_ | `rdfs:label` | `E42_Identifier1`|
| _ConstituentURI_ | `uri` | `E39_Actor1`|
| _DisplayBio_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E33_Linguistic_Object1`|
| _DisplayBioURI_ | `uri` | `E33_Linguistic_Object1`|
| _DisplayName_ | `rdfs:label` | `E82_Actor_Appellation1`|
| _ObjectURI_ | `uri` | `E22_Man-Made_Object1`|
| _ProductionURI_ | `uri` | `E12_Production1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E12_Production1` | `http://www.cidoc-crm.org/cidoc-crm/P14_carried_out_by` | `E39_Actor1`|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P108i_was_produced_by` | `E12_Production1`|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P48_has_preferred_identifier` | `E42_Identifier1`|
| `E33_Linguistic_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P129_is_about` | `E39_Actor1`|
| `E39_Actor1` | `http://www.cidoc-crm.org/cidoc-crm/P131_is_identified_by` | `E82_Actor_Appellation1`|
