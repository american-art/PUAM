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

#### _PrincetonPublicLabel_
From column: _RECORDS / PrincetonPublic_
>``` python
if getValue("PrincetonPublic") == "1":
    return "Princeton Public"
```

#### _PrincetonPublicURI_
From column: _RECORDS / PrincetonPublicLabel_
>``` python
if getValue("PrincetonPublic") == "1":
    return "thes/event/exhibition/princeton-public"
```

#### _InHouseLabel_
From column: _RECORDS / InHouse_
>``` python
if getValue("InHouse") == "1":
    return "In-house exhibition"
```

#### _InHouseTypeURI_
From column: _RECORDS / InHouseLabel_
>``` python
if getValue("InHouse") == "1":
    return "thes/event/exhibition/in-house"
```

#### _TravelingLabel_
From column: _RECORDS / Traveling_
>``` python
if getValue("Traveling") == "1":
    return "Traveling exhibition"
```

#### _TravelingExhibitionURI_
From column: _RECORDS / TravelingLabel_
>``` python
if getValue("Traveling") == "1":
    return "http://vocab.getty.edu/aat/300054773"
```

#### _OnlineHistoryLabel_
From column: _RECORDS / OnlineHistory_
>``` python
if getValue("OnlineHistory") == "1":
    return "Online History"
```

#### _OnlineHistoryURI_
From column: _RECORDS / OnlineHistoryLabel_
>``` python
if getValue("OnlineHistory") == "1":
    return "thes/event/exhibition/online-history"
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
| _ExhibitionURI_ | `uri` | `E7_Activity1`|
| _InHouseLabel_ | `rdfs:label` | `E55_Type1`|
| _InHouseTypeURI_ | `uri` | `E55_Type1`|
| _OnlineHistoryLabel_ | `rdfs:label` | `E55_Type3`|
| _OnlineHistoryURI_ | `uri` | `E55_Type3`|
| _PrincetonPublicLabel_ | `rdfs:label` | `E55_Type4`|
| _PrincetonPublicURI_ | `uri` | `E55_Type4`|
| _TravelingExhibitionURI_ | `uri` | `E55_Type2`|
| _TravelingLabel_ | `rdfs:label` | `E55_Type2`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E7_Activity1` | `http://www.cidoc-crm.org/cidoc-crm/P1_is_identified_by` | `E41_Appellation1`|
| `E7_Activity1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type1`|
| `E7_Activity1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type2`|
| `E7_Activity1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type3`|
| `E7_Activity1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type4`|
| `E7_Activity1` | `http://www.cidoc-crm.org/cidoc-crm/P4_has_time-span` | `E52_Time-Span1`|
