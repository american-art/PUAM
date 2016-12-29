## apiconaltnames.json

### PyTransforms
#### _ConstituentURI_
From column: _RECORDS / ConstituentID_
>``` python
return "person-institution/"+getValue("ConstituentID")
```

#### _ConstituentPositionURI_
From column: _RECORDS / ConstituentURI_
>``` python
if getValue("Position"):
    return getValue("ConstituentURI")+"/position"
```

#### _NameTypeURI_
From column: _RECORDS / NameType_
>``` python
if getValue("NameType"):
    return "thesauri/nametype/"+getValue("NameType").lower().replace(" ","-")
```

#### _ActorAppellationURI_
From column: _RECORDS / NameTypeURI_
>``` python
if getValue("NameType"):
    return getValue("ConstituentURI")+"/appellation"
```

#### _LastNameTypeURI_
From column: _RECORDS / LastName_
>``` python
if getValue("LastName"):
    return "thesauri/nametype/last-name"
```

#### _LastNameAppellationURI_
From column: _RECORDS / LastNameTypeURI_
>``` python
if getValue("LastName"):
    return getValue("ActorAppellationURI")+"/lastname"
```

#### _FirstNameTypeURI_
From column: _RECORDS / FirstName_
>``` python
if getValue("FirstName"):
    return "thesauri/nametype/first-name"
```

#### _FirstNameAppellationURI_
From column: _RECORDS / FirstNameTypeURI_
>``` python
if getValue("FirstName"):
    return getValue("ActorAppellationURI")+"/firstname"
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _ActorAppellationURI_ | `uri` | `E82_Actor_Appellation1`|
| _ConstituentPositionURI_ | `uri` | `E33_Linguistic_Object1`|
| _ConstituentURI_ | `uri` | `E39_Actor1`|
| _CultureGroup_ | `rdfs:label` | `E74_Group1`|
| _DisplayName_ | `rdfs:label` | `E82_Actor_Appellation1`|
| _FirstName_ | `rdfs:label` | `E82_Actor_Appellation3`|
| _FirstNameAppellationURI_ | `uri` | `E82_Actor_Appellation3`|
| _FirstNameTypeURI_ | `uri` | `E55_Type3`|
| _LastName_ | `rdfs:label` | `E82_Actor_Appellation2`|
| _LastNameAppellationURI_ | `uri` | `E82_Actor_Appellation2`|
| _LastNameTypeURI_ | `uri` | `E55_Type2`|
| _NameType_ | `rdfs:label` | `E55_Type1`|
| _NameTypeURI_ | `uri` | `E55_Type1`|
| _Position_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E33_Linguistic_Object1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E33_Linguistic_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P129_is_about` | `E39_Actor1`|
| `E39_Actor1` | `http://www.cidoc-crm.org/cidoc-crm/P107i_is_current_or_former_member_of` | `E74_Group1`|
| `E39_Actor1` | `http://www.cidoc-crm.org/cidoc-crm/P131_is_identified_by` | `E82_Actor_Appellation1`|
| `E82_Actor_Appellation1` | `http://www.cidoc-crm.org/cidoc-crm/P106_is_composed_of` | `E82_Actor_Appellation2`|
| `E82_Actor_Appellation1` | `http://www.cidoc-crm.org/cidoc-crm/P106_is_composed_of` | `E82_Actor_Appellation3`|
| `E82_Actor_Appellation1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type1`|
| `E82_Actor_Appellation2` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type2`|
| `E82_Actor_Appellation3` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type3`|
