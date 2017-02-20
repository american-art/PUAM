# apiobjmediaxrefs_american.json

## Add Column

## Add Node/Literal

## PyTransforms
#### _ObjectURI_
From column: _RECORDS / ObjectID_
``` python
return "object/"+getValue("ObjectID")
```

#### _ImageURI_
From column: _RECORDS / Filename_
``` python
return "artimage.princeton.edu/files/ProductionJpegs/"+getValue("Filename")
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _ImageURI_ | `uri` | `crm:E38_Image1`|
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E22_Man-Made_Object1` | `crm:P138i_has_representation` | `crm:E38_Image1`|
