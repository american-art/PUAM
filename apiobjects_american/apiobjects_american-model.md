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

#### Literal Node: `http://vocab.getty.edu/ulan/500310237`
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
if getValue("Medium"):
    return getValue("ObjectURI") + "/medium"
else:
    return ""
```

#### _DimensionsURI_
From column: _RECORDS / DimensionsLabel_
``` python
if getValue("DimensionsLabel"):
    return getValue("ObjectURI") + "/dimensions"
else:
    return ""
```

#### _CreditLineURI_
From column: _RECORDS / CreditLine_
``` python
if getValue("CreditLine"):
    return getValue("ObjectURI") + "/credit_line"
else:
    return ""
```

#### _ClassificationEventURI_
From column: _RECORDS / Classification_
``` python
return getValue("ObjectURI") + "/classification_event"
```

#### _ClassificationClassURI_
From column: _RECORDS / Classification_
``` python
return AATTerm.get_aat_uri("puam",getValue("Classification"))
```

#### _Dated_clean_
From column: _RECORDS / Dated_
``` python
if getValue("Dated") and getValue("Dated")!="0":
    return getValue("Dated")
else:
    return ""
```

#### _DateBegin_clean_
From column: _RECORDS / DateBegin_
``` python
if getValue("DateBegin") and getValue("DateBegin")!="0":
    return getValue("DateBegin")+"-01-01"
else:
    return ""
```

#### _DateEnd_clean_
From column: _RECORDS / DateEnd_
``` python
if getValue("DateEnd") and getValue("DateEnd")!="0":
    return getValue("DateEnd")+"-12-31"
else:
    return ""
```

#### _ProductionURI_
From column: _RECORDS / SortNumber_
``` python
if getValue("Dated_clean") or getValue("DateBegin_clean") or getValue("DateEnd_clean"):
    return getValue("ObjectURI")+"/production"
else:
    return ""
```

#### _TimeSpanURI_
From column: _RECORDS / ProductionURI_
``` python
if getValue("Dated_clean") or getValue("DateBegin_clean") or getValue("DateEnd_clean"):
    return getValue("ProductionURI")+"/timespan"
else:
    return ""
```

#### _OwnerURI_
From column: _RECORDS / ObjectNumber_
``` python
return "http://data.americanartcollaborative.org/puam"
```

#### _OwnerLabel_
From column: _RECORDS / OwnerURI_
``` python
return "Princeton University Art Museum"
```

#### _ObjectNoURI_
From column: _RECORDS / ObjectNumber_
``` python
return getValue("ObjectURI")+"/obj_no"
```

#### _SortNoURI_
From column: _RECORDS / SortNumber_
``` python
return getValue("ObjectURI")+"/sort_no"
```

#### _SortNoLabel_
From column: _RECORDS / SortNumber_
``` python
return getValue("SortNumber")
```

#### _DeptURI_
From column: _RECORDS / Department_
``` python
if getValue("Department"):
    return getValue("ObjectURI")+"/collection"
else:
    return ""
```

#### _GroupURI_
From column: _RECORDS / Department_
``` python
if getValue("Department"):
    return UM.uri_from_fields("thesauri/department/",getValue("Department"))
else:
    return ""
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
| _DateBegin_clean_ | `crm:P82a_begin_of_the_begin` | `crm:E52_Time-Span1`|
| _DateEnd_clean_ | `crm:P82b_end_of_the_end` | `crm:E52_Time-Span1`|
| _Dated_clean_ | `rdfs:label` | `crm:E52_Time-Span1`|
| _Department_ | `rdfs:label` | `crm:E74_Group1`|
| _DeptURI_ | `uri` | `crm:E19_Physical_Object1`|
| _DimensionsLabel_ | `rdf:value` | `crm:E33_Linguistic_Object2`|
| _DimensionsURI_ | `uri` | `crm:E33_Linguistic_Object2`|
| _GroupURI_ | `uri` | `crm:E74_Group1`|
| _Medium_ | `rdf:value` | `crm:E33_Linguistic_Object1`|
| _MediumURI_ | `uri` | `crm:E33_Linguistic_Object1`|
| _ObjectID_ | `rdf:value` | `crm:E42_Identifier1`|
| _ObjectID_URI_ | `uri` | `crm:E42_Identifier1`|
| _ObjectLabel_ | `rdfs:label` | `crm:E42_Identifier1`|
| _ObjectNoURI_ | `uri` | `crm:E42_Identifier2`|
| _ObjectNumber_ | `rdf:value` | `crm:E42_Identifier2`|
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|
| _OwnerLabel_ | `rdfs:label` | `crm:E40_Legal_Body1`|
| _OwnerURI_ | `uri` | `crm:E40_Legal_Body1`|
| _ProductionURI_ | `uri` | `crm:E12_Production1`|
| _SortNoLabel_ | `rdfs:label` | `crm:E42_Identifier3`|
| _SortNoURI_ | `uri` | `crm:E42_Identifier3`|
| _SortNumber_ | `rdf:value` | `crm:E42_Identifier3`|
| _TimeSpanURI_ | `uri` | `crm:E52_Time-Span1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E12_Production1` | `crm:P4_has_time-span` | `crm:E52_Time-Span1`|
| `crm:E17_Type_Assignment1` | `crm:P42_assigned` | `crm:E55_Type1`|
| `crm:E17_Type_Assignment1` | `crm:P21_had_general_purpose` | `http://vocab.getty.edu/aat/300179869`|
| `crm:E19_Physical_Object1` | `crm:P49_has_former_or_current_keeper` | `crm:E74_Group1`|
| `crm:E22_Man-Made_Object1` | `crm:P108i_was_produced_by` | `crm:E12_Production1`|
| `crm:E22_Man-Made_Object1` | `crm:P41i_was_classified_by` | `crm:E17_Type_Assignment1`|
| `crm:E22_Man-Made_Object1` | `crm:P46i_forms_part_of` | `crm:E19_Physical_Object1`|
| `crm:E22_Man-Made_Object1` | `crm:P67i_is_referred_to_by` | `crm:E33_Linguistic_Object1`|
| `crm:E22_Man-Made_Object1` | `crm:P67i_is_referred_to_by` | `crm:E33_Linguistic_Object2`|
| `crm:E22_Man-Made_Object1` | `crm:P67i_is_referred_to_by` | `crm:E33_Linguistic_Object3`|
| `crm:E22_Man-Made_Object1` | `crm:P52_has_current_owner` | `crm:E40_Legal_Body1`|
| `crm:E22_Man-Made_Object1` | `crm:P1_is_identified_by` | `crm:E42_Identifier1`|
| `crm:E22_Man-Made_Object1` | `crm:P1_is_identified_by` | `crm:E42_Identifier2`|
| `crm:E22_Man-Made_Object1` | `crm:P1_is_identified_by` | `crm:E42_Identifier3`|
| `crm:E22_Man-Made_Object1` | `crm:P2_has_type` | `crm:E55_Type1`|
| `crm:E33_Linguistic_Object1` | `crm:P2_has_type` | `http://vocab.getty.edu/aat/300264237`|
| `crm:E33_Linguistic_Object2` | `crm:P2_has_type` | `http://vocab.getty.edu/aat/300266036`|
| `crm:E33_Linguistic_Object3` | `crm:P2_has_type` | `http://vocab.getty.edu/aat/300026687`|
| `crm:E40_Legal_Body1` | `skos:exactMatch` | `http://vocab.getty.edu/ulan/500310237`|
| `crm:E42_Identifier1` | `crm:P2_has_type` | `http://vocab.getty.edu/aat/300404621`|
| `crm:E42_Identifier2` | `crm:P2_has_type` | `http://vocab.getty.edu/aat/300404621`|
| `crm:E74_Group1` | `crm:P2_has_type` | `http://vocab.getty.edu/aat/300263534`|
