# apiobjtermsxrefs_american.json

## Add Column

## Add Node/Literal
#### Literal Node: `http://vocab.getty.edu/aat/300015646`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`

#### Literal Node: `http://vocab.getty.edu/aat/300179869`
Literal Type: ``
<br/>Language: ``
<br/>isUri: `true`


## PyTransforms
#### _ObjectURI_
From column: _RECORDS / ObjectID_
``` python
return "object/"+getValue("ObjectID")
```

#### _TermURI_
From column: _RECORDS / TermID_
``` python
if getValue("ThesXrefType")=="Subject":
    return UM.uri_from_fields("thesauri/term_id/",getValue("TermID"))
```

#### _ClassificationEventURI_
From column: _RECORDS / Term_
``` python
if getValue("ThesXrefType")=="Classification":
    return getValue("ObjectURI")+"/classification_event"
else:
    return ""
```

#### _ClassificationURI_
From column: _RECORDS / ClassificationEventURI_
``` python
if getValue("ThesXrefType")=="Classification":
    v = getValue("Term")
    try:
        return AATTerm.get_aat_uri("puam",v)
    except:
        return UM.uri_from_fields("thesauri/classification/",v)
else:
    return ""
```

#### _ClassificationTermURI_
From column: _RECORDS / ClassificationURI_
``` python
if getValue("ThesXrefType")=="Classification":
    return getValue("Term")
else:
    return ""
```

#### _CultureURI_
From column: _RECORDS / Term_
``` python
if getValue("ThesXrefType")=="Culture" and getValue("Term")!="Culture / Styles / Periods":
    return UM.uri_from_fields("thesauri/culture/",getValue("Term"))
else:
    return ""
```

#### _CultureTerm_
From column: _RECORDS / CultureURI_
``` python
if getValue("ThesXrefType")=="Culture" and getValue("Term")!="Culture / Styles / Periods":
    return getValue("Term")
else:
    return ""
```

#### _CultureAssignmentURI_
From column: _RECORDS / Term_
``` python
if getValue("ThesXrefType")=="Culture" and getValue("Term")!="Culture / Styles / Periods":
    return getValue("ObjectURI")+"/culture"
else:
    return ""
```


## Selections

## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _ClassificationEventURI_ | `uri` | `crm:E17_Type_Assignment2`|
| _ClassificationTermURI_ | `rdfs:label` | `crm:E55_Type2`|
| _ClassificationURI_ | `uri` | `crm:E55_Type2`|
| _CultureAssignmentURI_ | `uri` | `crm:E17_Type_Assignment1`|
| _CultureTerm_ | `rdfs:label` | `crm:E55_Type1`|
| _CultureURI_ | `uri` | `crm:E55_Type1`|
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|
| _Term_ | `rdfs:label` | `crm:E1_CRM_Entity1`|
| _TermURI_ | `uri` | `crm:E1_CRM_Entity1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E17_Type_Assignment1` | `crm:P42_assigned` | `crm:E55_Type1`|
| `crm:E17_Type_Assignment1` | `crm:P21_had_general_purpose` | `http://vocab.getty.edu/aat/300015646`|
| `crm:E17_Type_Assignment2` | `crm:P42_assigned` | `crm:E55_Type2`|
| `crm:E17_Type_Assignment2` | `crm:P21_had_general_purpose` | `http://vocab.getty.edu/aat/300179869`|
| `crm:E22_Man-Made_Object1` | `crm:P41i_was_classified_by` | `crm:E17_Type_Assignment1`|
| `crm:E22_Man-Made_Object1` | `crm:P41i_was_classified_by` | `crm:E17_Type_Assignment2`|
| `crm:E22_Man-Made_Object1` | `crm:P62_depicts` | `crm:E1_CRM_Entity1`|
