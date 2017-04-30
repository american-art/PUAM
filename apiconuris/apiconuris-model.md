# apiconuris.json

## Add Column

## Add Node/Literal
#### Literal Node: `http://vocab.getty.edu/ulan`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`


## PyTransforms
#### _ConstituentURI_
From column: _RECORDS / ConstituentID_
``` python
return "constituent/"+getValue("ConstituentID")
```

#### _UlanID_
From column: _RECORDS / URI_
``` python
if getValue("URIType")=="ULAN":
    if "http://vocab.getty.edu/ulan/" in getValue("URI"):
        return getValue("URI")
    else:
        return "http://vocab.getty.edu/ulan/"+getValue("URI")
else:
    return ""
```

#### _ViafID_
From column: _RECORDS / UlanID_
``` python
if getValue("URIType")=="VIAF":
    return getValue("URI")
```

#### _AltIdURI_
From column: _RECORDS / UlanID_
``` python
if getValue("URIType")=="VIAF":
    return getValue("ConstituentURI")+"/alternate_id"
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _AltIdURI_ | `uri` | `crm:E42_Identifier1`|
| _ConstituentURI_ | `uri` | `crm:E39_Actor1`|
| _UlanID_ | `uri` | `skos:Concept1`|
| _ViafID_ | `rdf:value` | `crm:E42_Identifier1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E39_Actor1` | `crm:P1_is_identified_by` | `crm:E42_Identifier1`|
| `crm:E39_Actor1` | `skos:exactMatch` | `skos:Concept1`|
| `skos:Concept1` | `skos:inScheme` | `http://vocab.getty.edu/ulan`|
