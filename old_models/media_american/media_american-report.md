## media_american.json

### PyTransforms
#### _ObjectURI_
From column: _RECORDS / MediaMasterID_
>``` python

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

#### _CopyrightInfoURI_
From column: _RECORDS / Copyright_
>``` python
if getValue("Copyright"):
    return getValue("ImageURI")+"/copyright"
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _AltImageURI_ | `rdfs:label` | `E42_Identifier2`|
| _Copyright_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E33_Linguistic_Object1`|
| _CopyrightInfoURI_ | `uri` | `E33_Linguistic_Object1`|
| _Filename_ | `rdfs:label` | `E35_Title1`|
| _ImageTitleURI_ | `uri` | `E35_Title1`|
| _ImageURI_ | `uri` | `E38_Image1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E33_Linguistic_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P129_is_about` | `E38_Image1`|
| `E38_Image1` | `http://www.cidoc-crm.org/cidoc-crm/P102_has_title` | `E35_Title1`|
| `E38_Image1` | `http://www.cidoc-crm.org/cidoc-crm/P48_has_preferred_identifier` | `E42_Identifier2`|
