# apicongeography.json

## Add Column

## Add Node/Literal

## PyTransforms
#### _ConstituentURI_
From column: _RECORDS / ConstituentID_
``` python
return "constituent/" + getValue("ConstituentID")
```

#### _NIU_
From column: _RECORDS / ConstituentURI_
``` python
if getValue("Location"):
    return getValue("ConstituentURI") + "/birth"
else:
    return ""
```

#### _NIU1_
From column: _RECORDS / NIU_
``` python
if getValue("Location"):
    return UM.uri_from_fields("thesauiri/location/",getValue("Location"))
else:
    return ""
```

#### _Location_
From column: _RECORDS / City_
``` python
if getValue("Country"):
    place = getValue("Country")
    if getValue("State"):
        place = getValue("State") + ", " + place
    if getValue("City"):
        place = getValue("City") + ", " + place
    return place
else:
    return ""
```

#### _BirthEventURI_
From column: _RECORDS / ConstituentURI_
``` python
if getValue("Location"):
    return getValue("ConstituentURI") + "/birth"
else:
    return ""
```

#### _BirthPlaceURI_
From column: _RECORDS / BirthEventURI_
``` python
if getValue("Location"):
    return UM.uri_from_fields("thesauiri/location/",getValue("Location"))
else:
    return ""
```


## Selections
#### _DEFAULT_TEST_
From column: _RECORDS / GeoNames_
<br>Operation: `Union`
``` python
return getValue("ConGeoCode") != "Birth Place"
```


## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _BirthEventURI_ | `uri` | `crm:E63_Beginning_of_Existence1`|
| _BirthPlaceURI_ | `uri` | `crm:E53_Place1`|
| _ConstituentURI_ | `uri` | `crm:E39_Actor1`|
| _Location_ | `rdfs:label` | `crm:E53_Place1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E39_Actor1` | `crm:P92i_was_brought_into_existence_by` | `crm:E63_Beginning_of_Existence1`|
| `crm:E63_Beginning_of_Existence1` | `crm:P7_took_place_at` | `crm:E53_Place1`|
