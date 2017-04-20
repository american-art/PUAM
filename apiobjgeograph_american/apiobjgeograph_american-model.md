# apiobjgeograph_american.json

## Add Column

## Add Node/Literal

## PyTransforms
#### _ObjectURI_
From column: _RECORDS / ObjectID_
``` python
return "object/"+getValue("ObjectID")
```

#### _Location_
From column: _RECORDS / Region_
``` python
if getValue("Country"):
    s = getValue("Country")
    if getValue("State"):
        s = getValue("State") + ", " + s
        if getValue("City"):
            s = getValue("City")+", "+s
else:
    s = ''
return s
```

#### _ProductionURI_
From column: _RECORDS / GeoCode_
``` python
if getValue("GeoCode")=="Place made":
    return getValue("ObjectURI")+"/production"
else:
    return ""
```

#### _PlaceURI_
From column: _RECORDS / PrimaryDisplay_
``` python
if getValue("GeoCode")=="Place made" and getValue("Location"):
    return UM.uri_from_fields("thesauri/location/",getValue("Location"))
```

#### _SubjectURI_
From column: _RECORDS / GeoCode_
``` python
if getValue("GeoCode")=="Place depicted":
    return UM.uri_from_fields("thesauri/location/",getValue("Location"))
else:
    return ""
```

#### _SubjectLocation_
From column: _RECORDS / SubjectURI_
``` python
if getValue("GeoCode")=="Place depicted":
    return getValue("Location")
else:
    return ""
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _Location_ | `rdfs:label` | `crm:E53_Place1`|
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|
| _PlaceURI_ | `uri` | `crm:E53_Place1`|
| _ProductionURI_ | `uri` | `crm:E12_Production1`|
| _SubjectLocation_ | `rdfs:label` | `crm:E53_Place2`|
| _SubjectURI_ | `uri` | `crm:E53_Place2`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E12_Production1` | `crm:P7_took_place_at` | `crm:E53_Place1`|
| `crm:E22_Man-Made_Object1` | `crm:P108i_was_produced_by` | `crm:E12_Production1`|
| `crm:E22_Man-Made_Object1` | `crm:P62_depicts` | `crm:E53_Place2`|
