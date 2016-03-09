## apiconstituents_american.json

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

#### _BirthURI_
From column: _RECORDS / BeginDate_
>``` python
return getValue("ConstituentURI")+"/birth"
```

#### _BirthDateURI_
From column: _RECORDS / BeginDate_
>``` python
return getValue("BirthURI")+"/date"
```

#### _DeathURI_
From column: _RECORDS / EndDate_
>``` python
return getValue("ConstituentURI")+"/death"
```

#### _DeathDateURI_
From column: _RECORDS / EndDate_
>``` python
return getValue("DeathURI")+"/date"
```

#### _NationalityURI_
From column: _RECORDS / Nationality_
>``` python
if getValue("Nationality"):
    return "thesauri/nationality/"+getValue("Nationality").lower().replace(" ",",")
```

#### _BiographyURI_
From column: _RECORDS / Biography_
>``` python
if getValue("Biography"):
    return getValue("ConstituentURI")+"/biography"
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _BeginDate_ | `http://www.cidoc-crm.org/cidoc-crm/P82a_begin_of_the_begin` | `E52_Time-Span1`|
| _Biography_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E33_Linguistic_Object2`|
| _BiographyURI_ | `uri` | `E33_Linguistic_Object2`|
| _BirthDateURI_ | `uri` | `E52_Time-Span1`|
| _BirthURI_ | `uri` | `E67_Birth1`|
| _ConstituentPositionURI_ | `uri` | `E33_Linguistic_Object1`|
| _ConstituentURI_ | `uri` | `E39_Actor1`|
| _DeathDateURI_ | `uri` | `E52_Time-Span2`|
| _DeathURI_ | `uri` | `E69_Death1`|
| _DisplayName_ | `rdfs:label` | `E82_Actor_Appellation1`|
| _EndDate_ | `http://www.cidoc-crm.org/cidoc-crm/P82b_end_of_the_end` | `E52_Time-Span2`|
| _FirstName_ | `rdfs:label` | `E82_Actor_Appellation3`|
| _FirstNameAppellationURI_ | `uri` | `E82_Actor_Appellation3`|
| _FirstNameTypeURI_ | `uri` | `E55_Type3`|
| _LastName_ | `rdfs:label` | `E82_Actor_Appellation2`|
| _LastNameAppellationURI_ | `uri` | `E82_Actor_Appellation2`|
| _LastNameTypeURI_ | `uri` | `E55_Type2`|
| _Nationality_ | `rdfs:label` | `E74_Group1`|
| _NationalityURI_ | `uri` | `E74_Group1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E33_Linguistic_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P129_is_about` | `E39_Actor1`|
| `E33_Linguistic_Object2` | `http://www.cidoc-crm.org/cidoc-crm/P129_is_about` | `E39_Actor1`|
| `E39_Actor1` | `bmo:PX_nationality` | `E74_Group1`|
| `E39_Actor1` | `http://www.cidoc-crm.org/cidoc-crm/P100i_died_in` | `E69_Death1`|
| `E39_Actor1` | `http://www.cidoc-crm.org/cidoc-crm/P131_is_identified_by` | `E82_Actor_Appellation1`|
| `E39_Actor1` | `http://www.cidoc-crm.org/cidoc-crm/P98i_was_born` | `E67_Birth1`|
| `E67_Birth1` | `http://www.cidoc-crm.org/cidoc-crm/P4_has_time-span` | `E52_Time-Span1`|
| `E69_Death1` | `http://www.cidoc-crm.org/cidoc-crm/P4_has_time-span` | `E52_Time-Span2`|
| `E82_Actor_Appellation1` | `http://www.cidoc-crm.org/cidoc-crm/P106_is_composed_of` | `E82_Actor_Appellation2`|
| `E82_Actor_Appellation1` | `http://www.cidoc-crm.org/cidoc-crm/P106_is_composed_of` | `E82_Actor_Appellation3`|
| `E82_Actor_Appellation1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type4`|
| `E82_Actor_Appellation1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type5`|
| `E82_Actor_Appellation2` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type2`|
| `E82_Actor_Appellation3` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type3`|
