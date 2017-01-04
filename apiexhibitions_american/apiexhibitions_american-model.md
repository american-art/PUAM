# apiexhibitions_american.json

## Add Column

## Add Node/Literal
#### Literal Node: `<http://vocab.getty.edu/aat/300404670>`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`


## PyTransforms
#### _ExhibitionURI_
From column: _RECORDS / ExhibitionID_
``` python
exhibitID = getValue("ExhibitionID")
if exhibitID != "":
    return "exhibition/" + exhibitID
else:
    return ""
```

#### _ExhibitionTimeSpanURI_
From column: _RECORDS / DisplayDate_
``` python
return getValue("ExhibitionURI") + "/time_span"
```

#### _ExhibitionID_URI_
From column: _RECORDS / ExhibitionID_
``` python
return getValue("ExhibitionURI") + "/id"

```

#### _ExhibCitationURI_
From column: _RECORDS / ExhCitation_
``` python
return getValue("ExhibitionURI")+"/citation"
```

#### _ExhibitionAppellationURI_
From column: _RECORDS / ExhTitle_
``` python
return getValue("ExhibitionURI") + "/appellation"
```

#### _ExhibitionAppellationTypeURI_
From column: _RECORDS / ExhibitionAppellationURI_
``` python
return getValue("ExhibitionURI") + "/appellation_type"
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _BeginISODate_ | `crm:P82a_begin_of_the_begin` | `crm:E52_Time-Span1`|
| _DisplayDate_ | `rdfs:label` | `crm:E52_Time-Span1`|
| _EndISODate_ | `crm:P82b_end_of_the_end` | `crm:E52_Time-Span1`|
| _ExhCitation_ | `crm:P3_has_note` | `crm:E33_Linguistic_Object1`|
| _ExhTitle_ | `rdf:value` | `crm:E41_Appellation1`|
| _ExhibCitationURI_ | `uri` | `crm:E33_Linguistic_Object1`|
| _ExhibitionAppellationTypeURI_ | `uri` | `crm:E55_Type1`|
| _ExhibitionAppellationURI_ | `uri` | `crm:E41_Appellation1`|
| _ExhibitionID_ | `rdfs:label` | `crm:E42_Identifier1`|
| _ExhibitionID_URI_ | `uri` | `crm:E42_Identifier1`|
| _ExhibitionTimeSpanURI_ | `uri` | `crm:E52_Time-Span1`|
| _ExhibitionURI_ | `uri` | `crm:E5_Event1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E41_Appellation1` | `crm:P2_has_type` | `crm:E55_Type1`|
| `crm:E55_Type1` | `skos:broadMatch` | `xsd:<http://vocab.getty.edu/aat/300404670>`|
| `crm:E5_Event1` | `crm:P129_is_about` | `crm:E33_Linguistic_Object1`|
| `crm:E5_Event1` | `crm:P1_is_identified_by` | `crm:E41_Appellation1`|
| `crm:E5_Event1` | `crm:P48_has_preferred_identifier` | `crm:E42_Identifier1`|
| `crm:E5_Event1` | `crm:P4_has_time-span` | `crm:E52_Time-Span1`|
