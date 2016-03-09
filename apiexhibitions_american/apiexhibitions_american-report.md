## apiexhibitions_american.json

### PyTransforms
#### _ExhibitionURI_
From column: _RECORDS / ExhibitionID_
>``` python
return "exhibition/"+getValue("ExhibitionID")
```

#### _ExhibitionAppellationURI_
From column: _RECORDS / ExhTitle_
>``` python
return getValue("ExhibitionURI")+"/appellation"
```

#### _ExhibitionDateURI_
From column: _RECORDS / DisplayDate_
>``` python
return getValue("ExhibitionURI")+"/date"
```

#### _ExhibitionNotes_
From column: _RECORDS / PrincetonPublic_
>``` python
return "In House = "+getValue("InHouse")+", Traveling = "+getValue("Traveling")+", OnlineHistory = "+getValue("OnlineHistory")+", PrincetonPublic = "+getValue("PrincetonPublic");
```

#### _ExhibitionNotesURI_
From column: _RECORDS / ExhibitionNotes_
>``` python
return getValue("ExhibitionURI")+"/notes"
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _BeginISODate_ | `http://www.cidoc-crm.org/cidoc-crm/P82a_begin_of_the_begin` | `E52_Time-Span1`|
| _DisplayDate_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E52_Time-Span1`|
| _EndISODate_ | `http://www.cidoc-crm.org/cidoc-crm/P82b_end_of_the_end` | `E52_Time-Span1`|
| _ExhTitle_ | `rdfs:label` | `E41_Appellation1`|
| _ExhibitionAppellationURI_ | `uri` | `E41_Appellation1`|
| _ExhibitionDateURI_ | `uri` | `E52_Time-Span1`|
| _ExhibitionNotes_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E33_Linguistic_Object1`|
| _ExhibitionNotesURI_ | `uri` | `E33_Linguistic_Object1`|
| _ExhibitionURI_ | `uri` | `E7_Activity1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E33_Linguistic_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P129_is_about` | `E7_Activity1`|
| `E7_Activity1` | `http://www.cidoc-crm.org/cidoc-crm/P1_is_identified_by` | `E41_Appellation1`|
| `E7_Activity1` | `http://www.cidoc-crm.org/cidoc-crm/P4_has_time-span` | `E52_Time-Span1`|
