# apiconstituents_american.json

## Add Column

## Add Node/Literal
#### Literal Node: `http://vocab.getty.edu/aat/300404670`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300404672`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300404845`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300404662`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300404651`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300404652`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300404654`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300379842`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300080102`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`


## PyTransforms
#### _ConstituentURI_
From column: _RECORDS / ConstituentID_
``` python
return "constituent/" + getValue("ConstituentID")
```

#### _ConstituentLabel_
From column: _RECORDS / ConstituentID_
``` python
return getValue("ConstituentID")
```

#### _ConstituentID_URI_
From column: _RECORDS / ConstituentLabel_
``` python
return getValue("ConstituentURI") + "/id"
```

#### _AppellationValue_
From column: _RECORDS / DisplayName_
``` python
return getValue("DisplayName")
```

#### _AppellationURI_
From column: _RECORDS / AppellationValue_
``` python
return getValue("ConstituentURI") + "/name"
```

#### _AlphaSortURI_
From column: _RECORDS / AlphaSort_
``` python
return getValue("ConstituentURI") + "/alpha_sort"
```

#### _NameTitleURI_
From column: _RECORDS / NameTitle_
``` python
if getValue("NameTitle"):
    return getValue("ConstituentURI") + "/name_title"
else:
    ""
```

#### _NameTitle_TypeURI_
From column: _RECORDS / NameTitleURI_
``` python
if getValue("NameTitle"):
    return "thesauri/name_type/name_title"
else:
    ""
```

#### _SuffixURI_
From column: _RECORDS / Suffix_
``` python
if getValue("Suffix"):
    return getValue("ConstituentURI") + "/suffix"
else:
    return ""
```

#### _SuffixTypeURI_
From column: _RECORDS / SuffixURI_
``` python
if getValue("Suffix"):
    return "thesauri/name_type/suffix"
else:
    return ""
```

#### _GivenNameURI_
From column: _RECORDS / FirstName_
``` python
if getValue("FirstName"):
    return getValue("ConstituentURI") + "/given_name"
else:
    ""
```

#### _GivenNameTypeURI_
From column: _RECORDS / GivenNameURI_
``` python
if getValue("FirstName"):
    return "thesauri/name_type/given_name"
else:
    return ""
```

#### _FamilyNameURI_
From column: _RECORDS / LastName_
``` python
if getValue("LastName"):
    return getValue("ConstituentURI") + "/family_name"
else:
    return ""
```

#### _FamilyNameTypeURI_
From column: _RECORDS / FamilyNameURI_
``` python
if getValue("LastName"):
    return "thesauri/name_type/family_name"
else:
    return ""
```

#### _MiddleNameURI_
From column: _RECORDS / MiddleName_
``` python
if getValue("MiddleName"):
    return getValue("ConstituentURI") + "/middle_name"
else:
    return ""
```

#### _MiddleNameTypeURI_
From column: _RECORDS / MiddleNameURI_
``` python
if getValue("MiddleName"):
    return "thesauri/name_type/middle_name"
else:
    return ""
```

#### _EarliestBirthdate_
From column: _RECORDS / BeginDate_
``` python
if getValue("BeginDate") and getValue("BeginDate")!="0":
    return getValue("BeginDate")+"-01-01"
else:
    return ""
```

#### _LatestBirthdate_
From column: _RECORDS / EarliestBirthdate_
``` python
if getValue("BeginDate") and getValue("BeginDate")!="0":
    return getValue("BeginDate")+"-12-31"
else:
    return ""
```

#### _BirthURI_
From column: _RECORDS / BeginDate_
``` python
if getValue("BeginDate") and getValue("BeginDate")!="0":
    return getValue("ConstituentURI") + "/birth"
else:
    return ""
```

#### _BirthTimeURI_
From column: _RECORDS / BirthURI_
``` python
if getValue("BeginDate") and getValue("BeginDate")!="0":
    return getValue("BirthURI") + "/date"
else:
    return ""
```

#### _EarliestDeathdate_
From column: _RECORDS / EndDate_
``` python
if getValue("EndDate") and getValue("EndDate")!="0":
    return getValue("EndDate")+"-01-01"
else:
    return ""
```

#### _LatestDeathdate_
From column: _RECORDS / EarliestDeathdate_
``` python
if getValue("EndDate") and getValue("EndDate")!="0":
    return getValue("EndDate")+"-12-31"
else:
    return ""
```

#### _DeathURI_
From column: _RECORDS / EndDate_
``` python
if getValue("EndDate") and getValue("EndDate")!="0":
    return getValue("ConstituentURI") + "/death"
else:
    return ""
```

#### _DeathTimeURI_
From column: _RECORDS / DeathURI_
``` python
if getValue("EndDate") and getValue("EndDate")!="0":
    return getValue("DeathURI") + "/time"
else:
    return ""
```

#### _NationalityURI_
From column: _RECORDS / Nationality_
``` python
if getValue("Nationality"):
    return UM.uri_from_fields("thesauri/nationality/",getValue("Nationality"))
else:
    return ""
```

#### _BiographyURI_
From column: _RECORDS / Biography_
``` python
if getValue("Biography"):
    return getValue("ConstituentURI") + "/biography"
else:
    return ""
```

#### _DisplayDateCopy_
From column: _RECORDS / EndDate_
``` python
return getValue("DisplayDate")
```

#### _NameLabel_
From column: _RECORDS / AppellationValue_
``` python
return getValue("DisplayName")
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _AlphaSort_ | `rdf:value` | `crm:E82_Actor_Appellation2`|
| _AlphaSortURI_ | `uri` | `crm:E82_Actor_Appellation2`|
| _AppellationURI_ | `uri` | `crm:E82_Actor_Appellation1`|
| _AppellationValue_ | `rdf:value` | `crm:E82_Actor_Appellation1`|
| _BeginDate_ | `rdfs:label` | `crm:E52_Time-Span1`|
| _Biography_ | `rdf:value` | `crm:E33_Linguistic_Object1`|
| _BiographyURI_ | `uri` | `crm:E33_Linguistic_Object1`|
| _BirthTimeURI_ | `uri` | `crm:E52_Time-Span1`|
| _BirthURI_ | `uri` | `crm:E63_Beginning_of_Existence1`|
| _ConstituentID_ | `rdf:value` | `crm:E42_Identifier1`|
| _ConstituentID_URI_ | `uri` | `crm:E42_Identifier1`|
| _ConstituentLabel_ | `rdfs:label` | `crm:E42_Identifier1`|
| _ConstituentURI_ | `uri` | `crm:E39_Actor1`|
| _DeathTimeURI_ | `uri` | `crm:E52_Time-Span2`|
| _DeathURI_ | `uri` | `crm:E64_End_of_Existence1`|
| _DisplayName_ | `rdfs:label` | `crm:E39_Actor1`|
| _EarliestBirthdate_ | `crm:P82a_begin_of_the_begin` | `crm:E52_Time-Span1`|
| _EarliestDeathdate_ | `crm:P82a_begin_of_the_begin` | `crm:E52_Time-Span2`|
| _EndDate_ | `rdfs:label` | `crm:E52_Time-Span2`|
| _FamilyNameTypeURI_ | `uri` | `crm:E55_Type4`|
| _FamilyNameURI_ | `uri` | `crm:E82_Actor_Appellation6`|
| _FirstName_ | `rdf:value` | `crm:E82_Actor_Appellation5`|
| _GivenNameTypeURI_ | `uri` | `crm:E55_Type3`|
| _GivenNameURI_ | `uri` | `crm:E82_Actor_Appellation5`|
| _LastName_ | `rdf:value` | `crm:E82_Actor_Appellation6`|
| _LatestBirthdate_ | `crm:P82b_end_of_the_end` | `crm:E52_Time-Span1`|
| _LatestDeathdate_ | `crm:P82b_end_of_the_end` | `crm:E52_Time-Span2`|
| _MiddleName_ | `rdf:value` | `crm:E82_Actor_Appellation7`|
| _MiddleNameTypeURI_ | `uri` | `crm:E55_Type5`|
| _MiddleNameURI_ | `uri` | `crm:E82_Actor_Appellation7`|
| _NameLabel_ | `rdfs:label` | `crm:E82_Actor_Appellation1`|
| _NameTitle_ | `rdf:value` | `crm:E82_Actor_Appellation3`|
| _NameTitleURI_ | `uri` | `crm:E82_Actor_Appellation3`|
| _NameTitle_TypeURI_ | `uri` | `crm:E55_Type1`|
| _Nationality_ | `rdfs:label` | `crm:E74_Group1`|
| _NationalityURI_ | `uri` | `crm:E74_Group1`|
| _Suffix_ | `rdf:value` | `crm:E82_Actor_Appellation4`|
| _SuffixTypeURI_ | `uri` | `crm:E55_Type2`|
| _SuffixURI_ | `uri` | `crm:E82_Actor_Appellation4`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E33_Linguistic_Object1` | `crm:P2_has_type` | `http://vocab.getty.edu/aat/300404670`|
| `crm:E33_Linguistic_Object1` | `crm:P2_has_type` | `http://vocab.getty.edu/aat/300080102`|
| `crm:E39_Actor1` | `crm:P129i_is_subject_of` | `crm:E33_Linguistic_Object1`|
| `crm:E39_Actor1` | `crm:P1_is_identified_by` | `crm:E42_Identifier1`|
| `crm:E39_Actor1` | `crm:P92i_was_brought_into_existence_by` | `crm:E63_Beginning_of_Existence1`|
| `crm:E39_Actor1` | `crm:P93i_was_taken_out_of_existence_by` | `crm:E64_End_of_Existence1`|
| `crm:E39_Actor1` | `crm:P107i_is_current_or_former_member_of` | `crm:E74_Group1`|
| `crm:E39_Actor1` | `crm:P131_is_identified_by` | `crm:E82_Actor_Appellation1`|
| `crm:E39_Actor1` | `crm:P131_is_identified_by` | `crm:E82_Actor_Appellation2`|
| `crm:E42_Identifier1` | `crm:P2_has_type` | `http://vocab.getty.edu/aat/300404670`|
| `crm:E55_Type1` | `skos:broadMatch` | `http://vocab.getty.edu/aat/300404845`|
| `crm:E55_Type2` | `skos:broadMatch` | `http://vocab.getty.edu/aat/300404662`|
| `crm:E55_Type3` | `skos:broadMatch` | `http://vocab.getty.edu/aat/300404651`|
| `crm:E55_Type4` | `skos:broadMatch` | `http://vocab.getty.edu/aat/300404652`|
| `crm:E55_Type5` | `skos:broadMatch` | `http://vocab.getty.edu/aat/300404654`|
| `crm:E63_Beginning_of_Existence1` | `crm:P4_has_time-span` | `crm:E52_Time-Span1`|
| `crm:E64_End_of_Existence1` | `crm:P4_has_time-span` | `crm:E52_Time-Span2`|
| `crm:E74_Group1` | `crm:P2_has_type` | `http://vocab.getty.edu/aat/300379842`|
| `crm:E82_Actor_Appellation1` | `crm:P106_is_composed_of` | `crm:E82_Actor_Appellation3`|
| `crm:E82_Actor_Appellation1` | `crm:P106_is_composed_of` | `crm:E82_Actor_Appellation4`|
| `crm:E82_Actor_Appellation1` | `crm:P106_is_composed_of` | `crm:E82_Actor_Appellation5`|
| `crm:E82_Actor_Appellation1` | `crm:P106_is_composed_of` | `crm:E82_Actor_Appellation6`|
| `crm:E82_Actor_Appellation1` | `crm:P106_is_composed_of` | `crm:E82_Actor_Appellation7`|
| `crm:E82_Actor_Appellation1` | `crm:P2_has_type` | `http://vocab.getty.edu/aat/300404670`|
| `crm:E82_Actor_Appellation2` | `crm:P2_has_type` | `http://vocab.getty.edu/aat/300404672`|
| `crm:E82_Actor_Appellation3` | `crm:P2_has_type` | `crm:E55_Type1`|
| `crm:E82_Actor_Appellation4` | `crm:P2_has_type` | `crm:E55_Type2`|
| `crm:E82_Actor_Appellation5` | `crm:P2_has_type` | `crm:E55_Type3`|
| `crm:E82_Actor_Appellation6` | `crm:P2_has_type` | `crm:E55_Type4`|
| `crm:E82_Actor_Appellation7` | `crm:P2_has_type` | `crm:E55_Type5`|
