# apiobjects_american.json

## Add Column

## Add Node/Literal
#### Literal Node: `http://vocab.getty.edu/aat/300404621`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`


## PyTransforms
#### _ObjectURI_
From column: _RECORDS / ObjectID_
``` python
return "object/"+getValue("ObjectID")
```

#### _AltObjectURI_
From column: _RECORDS / ObjectURI_
``` python
return "artmuseum.princeton.edu/collections/object/"+getValue("ObjectID")
```

#### _MediumURI_
From column: _RECORDS / Medium_
``` python
return getValue("ObjectURI")+"/medium"
```

#### _ProductionURI_
From column: _RECORDS / SortNumber_
``` python
return getValue("ObjectURI")+"/production"
```

#### _productionTimeURI_
From column: _RECORDS / ProductionURI_
``` python
return getValue("ObjectURI")+"/production/time-span"
```

#### _ClassificationURI_
From column: _RECORDS / Classification_
``` python
return "thesauri/classification/"+getValue("Classification").lower().replace(" ","-")
```

#### _DimensionsURI_
From column: _RECORDS / DimensionsLabel_
``` python
return getValue("ObjectURI") + "/dimensions"
```

#### _ObjectLabel_
From column: _RECORDS / ObjectID_
``` python
return getValue("ObjectID")
```

#### _ObjectID_URI_
From column: _RECORDS / ObjectLabel_
``` python
return getValue("ObjectURI") + "/id"
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _Classification_ | `rdfs:label` | `crm:E55_Type1`|
| _ClassificationURI_ | `uri` | `crm:E55_Type1`|
| _DateBegin_ | `crm:P82a_begin_of_the_begin` | `crm:E52_Time-Span1`|
| _DateEnd_ | `crm:P82b_end_of_the_end` | `crm:E52_Time-Span1`|
| _Dated_ | `crm:P3_has_note` | `crm:E52_Time-Span1`|
| _Department_ | `rdfs:label` | `crm:E74_Group1`|
| _DimensionsLabel_ | `crm:P3_has_note` | `crm:E54_Dimension1`|
| _DimensionsURI_ | `uri` | `crm:E54_Dimension1`|
| _Medium_ | `crm:P3_has_note` | `crm:E57_Material1`|
| _MediumURI_ | `uri` | `crm:E57_Material1`|
| _ObjectID_ | `rdf:value` | `crm:E42_Identifier1`|
| _ObjectID_URI_ | `uri` | `crm:E42_Identifier1`|
| _ObjectLabel_ | `rdfs:label` | `crm:E42_Identifier1`|
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|
| _ProductionURI_ | `uri` | `crm:E12_Production1`|
| _productionTimeURI_ | `uri` | `crm:E52_Time-Span1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E12_Production1` | `crm:P4_has_time-span` | `crm:E52_Time-Span1`|
| `crm:E22_Man-Made_Object1` | `crm:P108i_was_produced_by` | `crm:E12_Production1`|
| `crm:E22_Man-Made_Object1` | `crm:P1_is_identified_by` | `crm:E42_Identifier1`|
| `crm:E22_Man-Made_Object1` | `crm:P2_has_type` | `crm:E55_Type1`|
| `crm:E22_Man-Made_Object1` | `crm:P43_has_dimension` | `crm:E54_Dimension1`|
| `crm:E22_Man-Made_Object1` | `crm:P45_consists_of` | `crm:E57_Material1`|
| `crm:E22_Man-Made_Object1` | `crm:P50_has_current_keeper` | `crm:E74_Group1`|
| `crm:E42_Identifier1` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300404621`|
