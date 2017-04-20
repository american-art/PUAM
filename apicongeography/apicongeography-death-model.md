# apicongeography.json

## Add Column

## Add Node/Literal

## PyTransforms
#### _ConstituentURI_
From column: _RECORDS / ConstituentID_
``` python
return "constituent/" + getValue("ConstituentID")
```

#### _DeathEventURI_
From column: _RECORDS / ConstituentURI_
``` python
if getValue("Location"):
    return getValue("ConstituentURI") + "/death"
else:
    return ""
```

#### _DeathPlaceURI_
From column: _RECORDS / DeathEventURI_
``` python
if getValue("Location"):
    return UM.uri_from_fields("thesauri/location/",getValue("Location"))
else:
    return ""
```

#### _Location_
From column: _RECORDS / City_
``` python
if getValue("Country"):
    place = getValue("Country")
    if getValue("State"):
        place = getValue("State") + " ," + place
    if getValue("City"):
        place = getValue("City") + " ," + place
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
