# apicongeography.json

## Add Column

## Add Node/Literal
#### Node: ``
Uri: `http://www.cidoc-crm.org/cidoc-crm/E53_Place`
<br/>Id: ``


## PyTransforms
#### _ConstituentURI_
From column: _RECORDS / ConstituentID_
``` python
return "constituent/" + getValue("ConstituentID")
```

#### _DeathEventURI_
From column: _RECORDS / ConstituentURI_
``` python
if getValue("City"):
    return getValue("ConstituentURI") + "/death"
else:
    return ""
```

#### _DeathPlaceURI_
From column: _RECORDS / DeathEventURI_
``` python
def cleanURI(prefix, value):
    uri_value = value.lower().replace(' ', '_')
    return UM.uri_from_fields(prefix + uri_value)
if getValue("Location"):
    prefix = getValue("DeathEventURI") + "/"
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
return getValue("ConGeoCode") != "Death Place"
```


## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _ConstituentURI_ | `uri` | `crm:E39_Actor1`|
| _DeathEventURI_ | `uri` | `crm:E64_End_of_Existence1`|
| _DeathPlaceURI_ | `uri` | `crm:E53_Place1`|
| _Location_ | `rdfs:label` | `crm:E53_Place1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E39_Actor1` | `crm:P93i_was_taken_out_of_existence_by` | `crm:E64_End_of_Existence1`|
| `crm:E64_End_of_Existence1` | `crm:P7_took_place_at` | `crm:E53_Place1`|
