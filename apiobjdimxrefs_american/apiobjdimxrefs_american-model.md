# apiobjdimxrefs_american.json

## Add Column

## Add Node/Literal

## PyTransforms
#### _ObjectURI_
From column: _RECORDS / ObjectID_
``` python
return "object/" + getValue("ObjectID")
```

#### _DimensionURI_
From column: _RECORDS / DimensionID_
``` python
return getValue("ObjectURI") + "/dimension/" + getValue("DimensionID")
```

#### _DimensionTypeURI_
From column: _RECORDS / DimensionType_
``` python
return getValue("ObjectURI") + "/" + getValue("DimensionType").lower()
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _DimUnit_ | `crm:P91_has_unit` | `crm:E54_Dimension1`|
| _Dimension_ | `rdf:value` | `crm:E54_Dimension1`|
| _DimensionType_ | `skos:prefLabel` | `crm:E55_Type1`|
| _DimensionTypeURI_ | `uri` | `crm:E55_Type1`|
| _DimensionURI_ | `uri` | `crm:E54_Dimension1`|
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E22_Man-Made_Object1` | `crm:P43_has_dimension` | `crm:E54_Dimension1`|
| `crm:E54_Dimension1` | `crm:P2_has_type` | `crm:E55_Type1`|
