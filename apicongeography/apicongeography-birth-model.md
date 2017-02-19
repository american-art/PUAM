# apicongeography.json

## Add Column

## Add Node/Literal

## PyTransforms
#### _ConstituentURI_
From column: _RECORDS / ConstituentID_
``` python
return "constituent/" + getValue("ConstituentID")
```

#### _BirthEventURI_
From column: _RECORDS / ConstituentURI_
``` python
if getValue("City"):
    return getValue("ConstituentURI") + "/birth"
else:
    return ""
```

#### _BirthPlaceURI_
From column: _RECORDS / BirthEventURI_
``` python
def cleanURI(prefix, value):
    uri_value = value.lower().replace(' ', '_')
    return UM.uri_from_fields(prefix + uri_value)
if getValue("Location"):
    prefix = getValue("BirthEventURI") + "/"
    value = getValue("ConGeoCode")
    return cleanURI(prefix, value)
else:
    return ""
```

#### _Location_
From column: _RECORDS / City_
``` python
if getValue("City"):
    place = getValue("City")
    if place and getValue("Country"):
        place = place+", "+getValue("Country")
    return place
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
