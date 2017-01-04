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
return getValue("ConstituentURI") + "/death"
```

#### _DeathPlaceURI_
From column: _RECORDS / DeathEventURI_
``` python
def cleanURI(prefix, value):
    uri_value = value.lower().replace(' ', '_')
    return UM.uri_from_fields(prefix + uri_value)
prefix = getValue("DeathEventURI") + "/"
value = getValue("ConGeoCode")
return cleanURI(prefix, value)
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
| _City_ | `rdfs:label` | `crm:E53_Place1`|
| _ConstituentURI_ | `uri` | `crm:E39_Actor1`|
| _DeathEventURI_ | `uri` | `crm:E64_End_of_Existence1`|
| _DeathPlaceURI_ | `uri` | `crm:E53_Place1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E39_Actor1` | `crm:P93i_was_taken_out_of_existence_by` | `crm:E64_End_of_Existence1`|
| `crm:E64_End_of_Existence1` | `crm:P7_took_place_at` | `crm:E53_Place1`|
