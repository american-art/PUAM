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
return UM.uri_from_fields("thesauri/dimension/",getValue("DimensionType"))
```

#### _ElementURI_
From column: _RECORDS / Element_
``` python
return getValue("ObjectURI")+"/"+getValue("Element").lower()
```

#### _UnitURI_
From column: _RECORDS / Dimension_
``` python
return UM.uri_from_fields("thesauri/measurement_unit/",getValue("DimUnit"))
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _DimUnit_ | `uri` | `crm:E58_Measurement_Unit1`|
| _Dimension_ | `rdf:value` | `crm:E54_Dimension1`|
| _DimensionType_ | `skos:prefLabel` | `crm:E55_Type1`|
| _DimensionTypeURI_ | `uri` | `crm:E55_Type1`|
| _DimensionURI_ | `uri` | `crm:E54_Dimension1`|
| _Element_ | `rdfs:label` | `crm:E18_Physical_Thing1`|
| _ElementURI_ | `uri` | `crm:E18_Physical_Thing1`|
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|
| _UnitURI_ | `uri` | `crm:E58_Measurement_Unit1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E18_Physical_Thing1` | `crm:P43_has_dimension` | `crm:E54_Dimension1`|
| `crm:E22_Man-Made_Object1` | `crm:P46_is_composed_of` | `crm:E18_Physical_Thing1`|
| `crm:E54_Dimension1` | `crm:P2_has_type` | `crm:E55_Type1`|
| `crm:E54_Dimension1` | `crm:P91_has_unit` | `crm:E58_Measurement_Unit1`|
