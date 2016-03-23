## apiobjmediaxrefs_american.json

### PyTransforms
#### _ObjectURI_
From column: _RECORDS / MediaMasterID_
>``` python
return "object/" + getValue("ObjectID")
```

#### _ImageURI_
From column: _RECORDS / ObjectURI_
>``` python
if "Image" in getValue("MediaType"):
    return "image/" + getValue("MediaMasterID")
```

#### _AltObjectURI_
From column: _RECORDS / ObjectURI_
>``` python
return "artmuseum.princeton.edu/collections/object/" + getValue("ObjectID")
```

#### _AltImageURI_
From column: _RECORDS / ImageURI_
>``` python
if "Image" in getValue("MediaType"):
    return "artimages.princeton.edu/object/" + getValue("MediaMasterID")
```

#### _ImageTitleURI_
From column: _RECORDS / Filename_
>``` python
if getValue("ImageURI"):
    return getValue("ImageURI")+"/title"
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _AltImageURI_ | `rdfs:label` | `E42_Identifier2`|
| _AltObjectURI_ | `rdfs:label` | `E42_Identifier1`|
| _Filename_ | `rdfs:label` | `E35_Title1`|
| _ImageTitleURI_ | `uri` | `E35_Title1`|
| _ImageURI_ | `uri` | `E38_Image1`|
| _ObjectURI_ | `uri` | `E22_Man-Made_Object1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P138i_has_representation` | `E38_Image1`|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P48_has_preferred_identifier` | `E42_Identifier1`|
| `E38_Image1` | `http://www.cidoc-crm.org/cidoc-crm/P102_has_title` | `E35_Title1`|
| `E38_Image1` | `http://www.cidoc-crm.org/cidoc-crm/P48_has_preferred_identifier` | `E42_Identifier2`|
