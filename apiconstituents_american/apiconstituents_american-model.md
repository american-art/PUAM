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


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _AlphaSort_ | `rdf:value` | `crm:E82_Actor_Appellation2`|
| _AlphaSortURI_ | `uri` | `crm:E82_Actor_Appellation2`|
| _AppellationURI_ | `uri` | `crm:E82_Actor_Appellation1`|
| _AppellationValue_ | `rdf:value` | `crm:E82_Actor_Appellation1`|
| _ConstituentID_ | `rdf:value` | `crm:E42_Identifier1`|
| _ConstituentID_URI_ | `uri` | `crm:E42_Identifier1`|
| _ConstituentLabel_ | `rdfs:label` | `crm:E42_Identifier1`|
| _ConstituentURI_ | `uri` | `crm:E39_Actor1`|
| _DisplayName_ | `rdfs:label` | `crm:E39_Actor1`|
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
| `crm:E42_Identifier1` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300404670`|
| `crm:E55_Type1` | `skos:broadMatch` | `xsd:http://vocab.getty.edu/aat/300404845`|
| `crm:E55_Type2` | `skos:broadMatch` | `xsd:http://vocab.getty.edu/aat/300404662`|
| `crm:E82_Actor_Appellation1` | `crm:P106_is_composed_of` | `crm:E82_Actor_Appellation3`|
| `crm:E82_Actor_Appellation1` | `crm:P106_is_composed_of` | `crm:E82_Actor_Appellation4`|
| `crm:E82_Actor_Appellation1` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300404670`|
| `crm:E82_Actor_Appellation2` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300404672`|
| `crm:E82_Actor_Appellation3` | `crm:P2_has_type` | `crm:E55_Type1`|
| `crm:E82_Actor_Appellation4` | `crm:P2_has_type` | `crm:E55_Type2`|
