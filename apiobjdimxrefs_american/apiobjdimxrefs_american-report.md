## apiobjdimxrefs_american.json

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

#### _DimensionURI_
From column: _RECORDS / DimensionID_
>``` python
return "dimension/"+getValue("DimensionID")
```

#### _DimUnitURI_
From column: _RECORDS / DimUnit_
>``` python
if "centimeters" in getValue("DimUnit"):
    return "http://qudt.org/vocab/unit#Centimeter";
else:
    if "inches" in getValue("DimUnit"):
        return "http://qudt.org/vocab/unit#Inch"

```

#### _DimenstionTypeURI_
From column: _RECORDS / DimensionType_
>``` python
return "thesauri/dimension/" + getValue("DimensionType").replace(" ","-").lower()

```

#### _ElementNote_
From column: _RECORDS / ElemDescription_
>``` python
element = getValue("Element")
if getValue("ElemDescription"):
    element = element+ " (" + getValue("ElemDescription") + ")"
return element
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _AltObjectURI_ | `rdfs:label` | `E42_Identifier1`|
| _DimUnit_ | `rdfs:label` | `E58_Measurement_Unit1`|
| _DimUnitURI_ | `uri` | `E58_Measurement_Unit1`|
| _Dimension_ | `http://www.cidoc-crm.org/cidoc-crm/P90_has_value` | `E54_Dimension1`|
| _DimensionType_ | `rdfs:label` | `E55_Type1`|
| _DimensionURI_ | `uri` | `E54_Dimension1`|
| _DimenstionTypeURI_ | `uri` | `E55_Type1`|
| _ElementNote_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E54_Dimension1`|
| _ObjectURI_ | `uri` | `E22_Man-Made_Object1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P43_has_dimension` | `E54_Dimension1`|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P48_has_preferred_identifier` | `E42_Identifier1`|
| `E54_Dimension1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type1`|
| `E54_Dimension1` | `http://www.cidoc-crm.org/cidoc-crm/P91_has_unit` | `E58_Measurement_Unit1`|
