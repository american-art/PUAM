# apiobjtitlexrefs_american.json

## Add Column

## Add Node/Literal

## PyTransforms
#### _ObjectURI_
From column: _RECORDS / ObjectID_
``` python
return "object/" + getValue("ObjectID")
```

#### _TitleURI_
From column: _RECORDS / TitleType_
``` python
return getValue("ObjectURI")+"/title/"+getValue("TitleID")
```


## Selections
#### _DEFAULT_TEST_
From column: _RECORDS / Title_
<br>Operation: `Union`
``` python
return getValue("TitleType") != "(not entered)"
```


## Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _ObjectURI_ | `uri` | `crm:E22_Man-Made_Object1`|
| _Title_ | `rdf:value` | `crm:E35_Title1`|
| _TitleURI_ | `uri` | `crm:E35_Title1`|


## Links
| From | Property | To |
|  --- | -------- | ---|
| `crm:E22_Man-Made_Object1` | `crm:P102_has_title` | `crm:E35_Title1`|
