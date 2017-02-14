# apiobjects_american.json

## Add Column

## Add Node/Literal
#### Literal Node: `http://vocab.getty.edu/aat/300404621`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300264237`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300266036`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300026687`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300179869`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300263534`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`


## PyTransforms
#### _ObjectLabel_
From column: _RECORDS / ObjectID_
``` python
return getValue("ObjectID")
```

#### _ObjectURI_
From column: _RECORDS / ObjectLabel_
``` python
return "object/" + getValue("ObjectID")
```

#### _ObjectID_URI_
From column: _RECORDS / ObjectLabel_
``` python
return getValue("ObjectURI") + "/id"
```

#### _MediumURI_
From column: _RECORDS / Medium_
``` python
return getValue("ObjectURI") + "/medium"
```

#### _DimensionsURI_
From column: _RECORDS / DimensionsLabel_
``` python
return getValue("ObjectURI") + "/dimensions"
```

#### _CreditLineURI_
From column: _RECORDS / CreditLine_
``` python
return getValue("ObjectURI") + "/credit_line"
```

#### _ClassificationEventURI_
From column: _RECORDS / Classification_
``` python
return getValue("ObjectURI") + "/classification_event"
```

#### _ClassificationClassURI_
From column: _RECORDS / Classification_
``` python
return UM.uri_from_fields("thesauri/classification/",getValue("Classification"))
```

#### _ProductionURI_
From column: _RECORDS / SortNumber_
``` python
return getValue("ObjectURI")+"/production"
```

#### _TimespanURI_
From column: _RECORDS / ProductionURI_
``` python
return getValue("ProductionURI")+"/timespan"
```

#### _PhysicalObjURI_
From column: _RECORDS / Edition_
``` python
return getValue("ObjectURI")+"/department"
```

#### _DepartmentURI_
From column: _RECORDS / PhysicalObjURI_
``` python
return UM.uri_from_fields("thesauri/department/",getValue("Department"))
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _Classification_ | `rdfs:label` | `crm:E55_Type1`|
| _ClassificationClassURI_ | `uri` | `crm:E55_Type1`|
| _ClassificationEventURI_ | `uri` | `crm:E17_Type_Assignment1`|
| _CreditLine_ | `rdf:value` | `crm:E33_Linguistic_Object3`|
| _CreditLineURI_ | `uri` | `crm:E33_Linguistic_Object3`|
| _DateBegin_ | `crm:P82a_begin_of_the_begin` | `crm:E52_Time-Span1`|
| _DateEnd_ | `crm:P82b_end_of_the_end` | `crm:E52_Time-Span1`|
| _Dated_ | `rdfs:label` | `crm:E52_Time-Span1`|
| _Department_ | `rdfs:label` | `crm:E74_Group1`|
| _DepartmentURI_ | `uri` | `crm:E74_Group1`|
| _DimensionsLabel_ | `rdf:value` | `crm:E33_Linguistic_Object2`|
| _DimensionsURI_ | `uri` | `crm:E33_Linguistic_Object2`|
| _Medium_ | `rdf:value` | `crm:E33_Linguistic_Object1`|
| _MediumURI_ | `uri` | `crm:E33_Linguistic_Object1`|
| _ObjectID_ | `rdf:value` | `crm:E42_Identifier1`|
| _ObjectID_URI_ | `uri` | `crm:E42_Identifier1`|
| _ObjectLabel_ | `rdfs:label` | `crm:E42_Identifier1`|
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|
| _PhysicalObjURI_ | `uri` | `crm:E19_Physical_Object1`|
| _ProductionURI_ | `uri` | `crm:E12_Production1`|
| _TimespanURI_ | `uri` | `crm:E52_Time-Span1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E12_Production1` | `crm:P4_has_time-span` | `crm:E52_Time-Span1`|
| `crm:E17_Type_Assignment1` | `crm:P42_assigned` | `crm:E55_Type1`|
| `crm:E17_Type_Assignment1` | `crm:P21_had_general_purpose` | `xsd:http://vocab.getty.edu/aat/300179869`|
| `crm:E19_Physical_Object1` | `crm:P49_has_former_or_current_keeper` | `crm:E74_Group1`|
| `crm:E22_Man-Made_Object1` | `crm:P108i_was_produced_by` | `crm:E12_Production1`|
| `crm:E22_Man-Made_Object1` | `crm:P41i_was_classified_by` | `crm:E17_Type_Assignment1`|
| `crm:E22_Man-Made_Object1` | `crm:P46i_forms_part_of` | `crm:E19_Physical_Object1`|
| `crm:E22_Man-Made_Object1` | `crm:P67i_is_referred_to_by` | `crm:E33_Linguistic_Object1`|
| `crm:E22_Man-Made_Object1` | `crm:P67i_is_referred_to_by` | `crm:E33_Linguistic_Object2`|
| `crm:E22_Man-Made_Object1` | `crm:P67i_is_referred_to_by` | `crm:E33_Linguistic_Object3`|
| `crm:E22_Man-Made_Object1` | `crm:P1_is_identified_by` | `crm:E42_Identifier1`|
| `crm:E22_Man-Made_Object1` | `crm:P2_has_type` | `crm:E55_Type1`|
| `crm:E33_Linguistic_Object1` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300264237`|
| `crm:E33_Linguistic_Object2` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300266036`|
| `crm:E33_Linguistic_Object3` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300026687`|
| `crm:E42_Identifier1` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300404621`|
| `crm:E74_Group1` | `crm:P2_has_type` | `xsd:http://vocab.getty.edu/aat/300263534`|
