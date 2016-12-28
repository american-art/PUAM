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
return getValue("ConstituentURI") + "/appellation"
```

#### _AlphaSortURI_
From column: _RECORDS / AlphaSort_
``` python
return getValue("ConstituentURI") + "/alpha_sort"
```

#### _NameTitleURI_
From column: _RECORDS / NameTitle_
``` python
return getValue("AppellationURI") + "/name_title"
```

#### _NameTitle_TypeURI_
From column: _RECORDS / NameTitleURI_
``` python
return getValue("NameTitleURI") + "/type"
```

#### _SuffixURI_
From column: _RECORDS / Suffix_
``` python
return getValue("AppellationURI") + "/suffix"
```

#### _SuffixTypeURI_
From column: _RECORDS / SuffixURI_
``` python
return getValue("SuffixURI") + "/type"
```

#### _GivenNameURI_
From column: _RECORDS / FirstName_
``` python
return getValue("AppellationURI") + "/given_name"
```

#### _GivenNameTypeURI_
From column: _RECORDS / GivenNameURI_
``` python
return getValue("GivenNameURI") + "/type"
```

#### _FamilyNameURI_
From column: _RECORDS / LastName_
``` python
return getValue("AppellationURI") + "/family_name"
```

#### _FamilyNameTypeURI_
From column: _RECORDS / FamilyNameURI_
``` python
return getValue("FamilyNameURI") + "/type"
```

#### _MiddleNameURI_
From column: _RECORDS / MiddleName_
``` python
return getValue("AppellationURI") + "/middle_name"
```

#### _MiddleNameTypeURI_
From column: _RECORDS / MiddleNameURI_
``` python
return getValue("MiddleNameURI") + "/type"
```

#### _EarliestBirthdate_
From column: _RECORDS / BeginDate_
``` python
return getValue("BeginDate")
```

#### _LatestBirthdate_
From column: _RECORDS / EarliestBirthdate_
``` python
return getValue("BeginDate")
```

#### _BirthURI_
From column: _RECORDS / BeginDate_
``` python
return getValue("ConstituentURI") + "/birth"
```

#### _BirthTimeURI_
From column: _RECORDS / BirthURI_
``` python
return getValue("BirthURI") + "/time"
```

#### _EarliestDeathdate_
From column: _RECORDS / EndDate_
``` python
return getValue("EndDate")
```

#### _LatestDeathdate_
From column: _RECORDS / EarliestDeathdate_
``` python
return getValue("EndDate")
```

#### _DeathURI_
From column: _RECORDS / EndDate_
``` python
return getValue("ConstituentURI") + "/death"
```

#### _DeathTimeURI_
From column: _RECORDS / DeathURI_
``` python
return getValue("DeathURI") + "/time"
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _AlphaSort_ | `rdf:value` | `crm:E82_Actor_Appellation2`|
| _AlphaSortURI_ | `uri` | `crm:E82_Actor_Appellation2`|
| _AppellationURI_ | `uri` | `crm:E82_Actor_Appellation1`|
| _AppellationValue_ | `rdf:value` | `crm:E82_Actor_Appellation1`|
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
| _NameTitle_ | `rdf:value` | `crm:E82_Actor_Appellation3`|
| _NameTitleURI_ | `uri` | `crm:E82_Actor_Appellation3`|
| _NameTitle_TypeURI_ | `uri` | `crm:E55_Type1`|
| _Suffix_ | `rdf:value` | `crm:E82_Actor_Appellation4`|
| _SuffixTypeURI_ | `uri` | `crm:E55_Type2`|
| _SuffixURI_ | `uri` | `crm:E82_Actor_Appellation4`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E39_Actor1` | `crm:P131_is_identified_by` | `crm:E82_Actor_Appellation1`|
| `crm:E39_Actor1` | `crm:P131_is_identified_by` | `crm:E82_Actor_Appellation2`|
| `crm:E39_Actor1` | `crm:P1_is_identified_by` | `crm:E42_Identifier1`|
| `crm:E39_Actor1` | `crm:P92i_was_brought_into_existence_by` | `crm:E63_Beginning_of_Existence1`|
| `crm:E39_Actor1` | `crm:P93i_was_taken_out_of_existence_by` | `crm:E64_End_of_Existence1`|
| `crm:E42_Identifier1` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300404670`|
| `crm:E55_Type1` | `skos:broadMatch` | `xsd:http://vocab.getty.edu/aat/300404845`|
| `crm:E55_Type2` | `skos:broadMatch` | `xsd:http://vocab.getty.edu/aat/300404662`|
| `crm:E55_Type3` | `skos:broadMatch` | `xsd:http://vocab.getty.edu/aat/300404651`|
| `crm:E55_Type4` | `skos:broadMatch` | `xsd:http://vocab.getty.edu/aat/300404652`|
| `crm:E55_Type5` | `skos:broadMatch` | `xsd:http://vocab.getty.edu/aat/300404654`|
| `crm:E63_Beginning_of_Existence1` | `crm:P4_has_time-span` | `crm:E52_Time-Span1`|
| `crm:E64_End_of_Existence1` | `crm:P4_has_time-span` | `crm:E52_Time-Span2`|
| `crm:E82_Actor_Appellation1` | `crm:P106_is_composed_of` | `crm:E82_Actor_Appellation3`|
| `crm:E82_Actor_Appellation1` | `crm:P106_is_composed_of` | `crm:E82_Actor_Appellation4`|
| `crm:E82_Actor_Appellation1` | `crm:P106_is_composed_of` | `crm:E82_Actor_Appellation5`|
| `crm:E82_Actor_Appellation1` | `crm:P106_is_composed_of` | `crm:E82_Actor_Appellation6`|
| `crm:E82_Actor_Appellation1` | `crm:P106_is_composed_of` | `crm:E82_Actor_Appellation7`|
| `crm:E82_Actor_Appellation1` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300404670`|
| `crm:E82_Actor_Appellation2` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300404672`|
| `crm:E82_Actor_Appellation3` | `crm:P2_has_type` | `crm:E55_Type1`|
| `crm:E82_Actor_Appellation4` | `crm:P2_has_type` | `crm:E55_Type2`|
| `crm:E82_Actor_Appellation5` | `crm:P2_has_type` | `crm:E55_Type3`|
| `crm:E82_Actor_Appellation6` | `crm:P2_has_type` | `crm:E55_Type4`|
| `crm:E82_Actor_Appellation7` | `crm:P2_has_type` | `crm:E55_Type5`|
