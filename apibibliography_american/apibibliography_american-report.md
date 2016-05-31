## apibibliography_american.json

### PyTransforms
#### _ReferenceURI_
From column: _RECORDS / ReferenceID_
>``` python
return "reference/"+getValue("ReferenceID")
```

#### _DisplayDateValid_
From column: _RECORDS / DisplayDate_
>``` python
val= getValue("DisplayDate")
if ((val != "") & (val != '0')):
    return val+"-00-00"
```

#### _BeginDateValid_
From column: _RECORDS / BeginDate_
>``` python
val= getValue("BeginDate")
if ((val != "") & (val != '0')):
    return val+"-00-00"
```

#### _EndDateValid_
From column: _RECORDS / EndDate_
>``` python
val= getValue("EndDate")
if ((val != "") & (val != '0')):
    return val+"-00-00"
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _BeginDateValid_ | `http://www.cidoc-crm.org/cidoc-crm/P82a_begin_of_the_begin` | `E52_Time-Span1`|
| _BibCitation_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E33_Linguistic_Object1`|
| _DisplayDateValid_ | `rdfs:label` | `E52_Time-Span1`|
| _EndDateValid_ | `http://www.cidoc-crm.org/cidoc-crm/P82b_end_of_the_end` | `E52_Time-Span1`|
| _Language_ | `rdfs:label` | `E56_Language1`|
| _PlacePublished_ | `rdfs:label` | `E44_Place_Appellation1`|
| _ReferenceURI_ | `uri` | `E31_Document1`|
| _Title_ | `rdfs:label` | `E42_Identifier1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E31_Document1` | `http://www.cidoc-crm.org/cidoc-crm/P1_is_identified_by` | `E42_Identifier1`|
| `E31_Document1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E56_Language1`|
| `E33_Linguistic_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P129_is_about` | `E31_Document1`|
| `E53_Place1` | `http://www.cidoc-crm.org/cidoc-crm/P87_is_identified_by` | `E44_Place_Appellation1`|
| `E65_Creation1` | `http://www.cidoc-crm.org/cidoc-crm/P4_has_time-span` | `E52_Time-Span1`|
| `E65_Creation1` | `http://www.cidoc-crm.org/cidoc-crm/P7_took_place_at` | `E53_Place1`|
| `E65_Creation1` | `http://www.cidoc-crm.org/cidoc-crm/P94_has_created` | `E31_Document1`|
