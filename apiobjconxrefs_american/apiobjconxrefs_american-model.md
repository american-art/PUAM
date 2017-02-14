# apiobjconxrefs_american.json

## Add Column

## Add Node/Literal

## PyTransforms
#### _ObjectURI_
From column: _RECORDS / ObjectID_
``` python
return "object/" + getValue("ObjectID")
```

#### _ConstituentURI_
From column: _RECORDS / ConstituentID_
``` python
if getValue("Role")=="Artist":
    return "constituent/" + getValue("ConstituentID")
else:
    return ""
```

#### _ProductionURI_
From column: _RECORDS / ConstituentURI_
``` python
return getValue("ObjectURI")+"/production"
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _ConstituentURI_ | `uri` | `crm:E39_Actor1`|
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|
| _ProductionURI_ | `uri` | `crm:E12_Production1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E12_Production1` | `crm:P14_carried_out_by` | `crm:E39_Actor1`|
| `crm:E22_Man-Made_Object1` | `crm:P108i_was_produced_by` | `crm:E12_Production1`|
