## apiobjects_american.json

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

#### _MediumURI_
From column: _RECORDS / Medium_
>``` python
return getValue("ObjectURI")+"/medium"
```

#### _ProductionURI_
From column: _RECORDS / SortNumber_
>``` python
return getValue("ObjectURI")+"/production"
```

#### _productionTimeURI_
From column: _RECORDS / ProductionURI_
>``` python
return getValue("ObjectURI")+"/production/time-span"
```

#### _ClassificationURI_
From column: _RECORDS / Classification_
>``` python
return "thesauri/classification/"+getValue("Classification").lower().replace(" ","-")
```

#### _DimensionsURI_
From column: _RECORDS / DimensionsLabel_
>``` python
return getValue("ObjectURI") + "/dimensions"
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _Classification_ | `rdfs:label` | `E55_Type1`|
| _ClassificationURI_ | `uri` | `E55_Type1`|
| _DateBegin_ | `http://www.cidoc-crm.org/cidoc-crm/P82a_begin_of_the_begin` | `E52_Time-Span1`|
| _DateEnd_ | `http://www.cidoc-crm.org/cidoc-crm/P82b_end_of_the_end` | `E52_Time-Span1`|
| _Dated_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E52_Time-Span1`|
| _Department_ | `rdfs:label` | `E74_Group1`|
| _DimensionsLabel_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E54_Dimension1`|
| _DimensionsURI_ | `uri` | `E54_Dimension1`|
| _Medium_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E57_Material1`|
| _MediumURI_ | `uri` | `E57_Material1`|
| _ObjectURI_ | `uri` | `E22_Man-Made_Object1`|
| _ProductionURI_ | `uri` | `E12_Production1`|
| _productionTimeURI_ | `uri` | `E52_Time-Span1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E12_Production1` | `http://www.cidoc-crm.org/cidoc-crm/P4_has_time-span` | `E52_Time-Span1`|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P108i_was_produced_by` | `E12_Production1`|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type1`|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P43_has_dimension` | `E54_Dimension1`|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P45_consists_of` | `E57_Material1`|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P50_has_current_keeper` | `E74_Group1`|
