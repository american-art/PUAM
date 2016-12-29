## apiobjgeograph_american.json

### PyTransforms
#### _ContinentURI_
From column: _RECORDS / Continent_
>``` python
if getValue("Continent"):
    continent=getValue("Continent")
else:
    return ""

place=continent.replace(" ","-").replace(".","").replace(",","")

return "thesauri/place/"+place
```

#### _ContinentAppellationURI_
From column: _RECORDS / ContinentURI_
>``` python
if getValue("Continent"):
    return getValue("ContinentURI")+"/appellation"
else:
    return ""
```

#### _ContinentTypeURI_
From column: _RECORDS / ContinentAppellationURI_
>``` python
if getValue("Continent"):
    return "thesauri/placetype/Continent"
else:
    return ""
```

#### _CountryURI_
From column: _RECORDS / Country_
>``` python
if getValue("Country"):
    country=getValue("Country")
else:
    return ""

if getValue("Continent"):
    continent=getValue("Continent")
else:
    continent="none"

place=country+"_"+continent
place=place.replace(" ","-").replace(".","").replace(",","")

return "thesauri/place/"+place
```

#### _CountryAppellationURI_
From column: _RECORDS / CountryURI_
>``` python
if getValue("Country"):
    return getValue("CountryURI")+"/appellation"
else:
    return ""

```

#### _CountryTypeURI_
From column: _RECORDS / CountryAppellationURI_
>``` python
if getValue("Country"):
    return "thesauri/placetype/Country"
```

#### _RegionURI_
From column: _RECORDS / Region_
>``` python
if getValue("Region"):
    region=getValue("Region")
else:
    return ""

if getValue("Country"):
    country=getValue("Country")
else:
    country="none"

if getValue("Continent"):
    continent=getValue("Continent")
else:
    continent="none"

place=region+"_"+country+"_"+continent
place=place.replace(" ","-").replace(".","").replace(",","")

return "thesauri/place/"+place
```

#### _RegionAppellationURI_
From column: _RECORDS / RegionURI_
>``` python
if getValue("Region"):
   return getValue("RegionURI")+"/appellation"
else:
    return ""

```

#### _RegionTypeURI_
From column: _RECORDS / RegionAppellationURI_
>``` python
if getValue("Region"):
   return "thesauri/placetype/Region"
else:
    return ""

```

#### _StateURI_
From column: _RECORDS / State_
>``` python
if getValue("State"):
    state=getValue("State")
else:
    return ""

if getValue("Region"):
    region=getValue("Region")
else:
    region="none"

if getValue("Country"):
    country=getValue("Country")
else:
    country="none"

if getValue("Continent"):
    continent=getValue("Continent")
else:
    continent="none"

place=state+"_"+region+"_"+country+"_"+continent
place=place.replace(" ","-").replace(".","").replace(",","")

return "thesauri/place/"+place
```

#### _StateAppellationURI_
From column: _RECORDS / StateURI_
>``` python
if getValue("State"):
    return getValue("StateURI")+"/appellation"
else:
    return ""
```

#### _StateTypeURI_
From column: _RECORDS / StateAppellationURI_
>``` python
if getValue("State"):
    return "thesauri/placetype/State"
else:
    return ""
```

#### _CityURI_
From column: _RECORDS / City_
>``` python
if getValue("City"):
    city=getValue("City")
else:
    return ""

if getValue("State"):
    state=getValue("State")
else:
    state="none"

if getValue("Region"):
    region=getValue("Region")
else:
    region="none"

if getValue("Country"):
    country=getValue("Country")
else:
    country="none"

if getValue("Continent"):
    continent=getValue("Continent")
else:
    continent="none"

place=city+"_"+state+"_"+region+"_"+country+"_"+continent
place=place.replace(" ","-").replace(".","").replace(",","")

return "thesauri/place/"+place
```

#### _CityAppellationURI_
From column: _RECORDS / CityURI_
>``` python
if getValue("City"):
    return getValue("CityURI")+"/appellation"
else:
    return ""
```

#### _CityTypeURI_
From column: _RECORDS / CityAppellationURI_
>``` python
if getValue("City"):
    return "thesauri/placetype/City"
else:
    return ""
```

#### _CountyURI_
From column: _RECORDS / County_
>``` python
if getValue("County"):
    county=getValue("County")
else:
    return ""

if getValue("City"):
    city=getValue("City")
else:
    city="none"

if getValue("State"):
    state=getValue("State")
else:
    state="none"

if getValue("Region"):
    region=getValue("Region")
else:
    region="none"

if getValue("Country"):
    country=getValue("Country")
else:
    country="none"

if getValue("Continent"):
    continent=getValue("Continent")
else:
    continent="none"

place=county+"_"+city+"_"+state+"_"+region+"_"+country+"_"+continent
place=place.replace(" ","-").replace(".","").replace(",","")

return "thesauri/place/"+place
```

#### _LocaleURI_
From column: _RECORDS / Locale_
>``` python
if getValue("Locale"):
    locale=getValue("Locale")
else:
    return ""

if getValue("County"):
    county=getValue("County")
else:
    county="none"

if getValue("City"):
    city=getValue("City")
else:
    city="none"

if getValue("State"):
    state=getValue("State")
else:
    state="none"

if getValue("Region"):
    region=getValue("Region")
else:
    region="none"

if getValue("Country"):
    country=getValue("Country")
else:
    country="none"

if getValue("Continent"):
    continent=getValue("Continent")
else:
    continent="none"

place=locale+"_"+county+"_"+city+"_"+state+"_"+region+"_"+country+"_"+continent
place=place.replace(" ","-").replace(".","").replace(",","")

return "thesauri/place/"+place
```

#### _CountyAppellationURI_
From column: _RECORDS / CountyURI_
>``` python
if getValue("County"):
    return getValue("CountyURI") + "appellation"
else:
   return ""
```

#### _CountyTypeURI_
From column: _RECORDS / CountyAppellationURI_
>``` python
if getValue("County"):
    return "thesauri/placetype/County"
else:
   return ""
```

#### _LocaleAppellationURI_
From column: _RECORDS / LocaleURI_
>``` python
if getValue("Locale"):
    return getValue("LocaleURI")+"/appellation"
else:
    return ""

```

#### _LocaleTypeURI_
From column: _RECORDS / LocaleAppellationURI_
>``` python
if getValue("Locale"):
    return "thesauri/placetype/Locale"
else:
    return ""

```

#### _lat-lon_
From column: _RECORDS / Longitude_
>``` python
if getValue("Longitude"):
    lon = "longitude: "+ getValue("Longitude")
if getValue("Latitude"):
    lat = "latitude: "+ getValue("Latitude")
return lon + " " + lat

```

#### _CoordinatesURI_
From column: _RECORDS / lat-lon_
>``` python
if getValue("lat-lon"):
    return getValue("ObjGeographyURI")+"/coordinates"

```

#### _ObjectURI_
From column: _RECORDS / ObjectID_
>``` python
return "object/"+getValue("ObjectID")
```

#### _PlaceDepictedURI_
From column: _RECORDS / ObjGeographyID_
>``` python
if "depicted" in getValue("GeoCode"):
    return "obj-geography/"+getValue("ObjGeographyID")
```

#### _PlaceMadeURI_
From column: _RECORDS / PlaceDepictedURI_
>``` python
if "made" in getValue("GeoCode"):
    return "obj-geography/"+getValue("ObjGeographyID")
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _City_ | `rdfs:label` | `E48_Place_Name5`|
| _CityAppellationURI_ | `uri` | `E48_Place_Name5`|
| _CityTypeURI_ | `uri` | `E55_Type5`|
| _CityURI_ | `uri` | `E53_Place5`|
| _Continent_ | `rdfs:label` | `E48_Place_Name1`|
| _ContinentAppellationURI_ | `uri` | `E48_Place_Name1`|
| _ContinentTypeURI_ | `uri` | `E55_Type1`|
| _ContinentURI_ | `uri` | `E53_Place1`|
| _CoordinatesURI_ | `uri` | `E47_Spatial_Coordinates1`|
| _Country_ | `rdfs:label` | `E48_Place_Name2`|
| _CountryAppellationURI_ | `uri` | `E48_Place_Name2`|
| _CountryTypeURI_ | `uri` | `E55_Type2`|
| _CountryURI_ | `uri` | `E53_Place2`|
| _County_ | `rdfs:label` | `E48_Place_Name6`|
| _CountyAppellationURI_ | `uri` | `E48_Place_Name6`|
| _CountyTypeURI_ | `uri` | `E55_Type6`|
| _CountyURI_ | `uri` | `E53_Place6`|
| _GeoNames_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E53_Place8`|
| _Locale_ | `rdfs:label` | `E48_Place_Name7`|
| _LocaleAppellationURI_ | `uri` | `E48_Place_Name7`|
| _LocaleTypeURI_ | `uri` | `E55_Type7`|
| _LocaleURI_ | `uri` | `E53_Place7`|
| _ObjectURI_ | `uri` | `E22_Man-Made_Object1`|
| _PlaceDepictedURI_ | `uri` | `E53_Place9`|
| _PlaceMadeURI_ | `uri` | `E53_Place8`|
| _Region_ | `rdfs:label` | `E48_Place_Name3`|
| _RegionAppellationURI_ | `uri` | `E48_Place_Name3`|
| _RegionTypeURI_ | `uri` | `E55_Type3`|
| _RegionURI_ | `uri` | `E53_Place3`|
| _State_ | `rdfs:label` | `E48_Place_Name4`|
| _StateAppellationURI_ | `uri` | `E48_Place_Name4`|
| _StateTypeURI_ | `uri` | `E55_Type4`|
| _StateURI_ | `uri` | `E53_Place4`|
| _lat-lon_ | `http://www.cidoc-crm.org/cidoc-crm/P3_has_note` | `E47_Spatial_Coordinates1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `E12_Production1` | `http://www.cidoc-crm.org/cidoc-crm/P7_took_place_at` | `E53_Place8`|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P108i_was_produced_by` | `E12_Production1`|
| `E22_Man-Made_Object1` | `http://www.cidoc-crm.org/cidoc-crm/P62_depicts` | `E53_Place9`|
| `E53_Place1` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type1`|
| `E53_Place1` | `http://www.cidoc-crm.org/cidoc-crm/P87_is_identified_by` | `E48_Place_Name1`|
| `E53_Place2` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type2`|
| `E53_Place2` | `http://www.cidoc-crm.org/cidoc-crm/P87_is_identified_by` | `E48_Place_Name2`|
| `E53_Place2` | `http://www.cidoc-crm.org/cidoc-crm/P89_falls_within` | `E53_Place1`|
| `E53_Place3` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type3`|
| `E53_Place3` | `http://www.cidoc-crm.org/cidoc-crm/P87_is_identified_by` | `E48_Place_Name3`|
| `E53_Place3` | `http://www.cidoc-crm.org/cidoc-crm/P89_falls_within` | `E53_Place2`|
| `E53_Place4` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type4`|
| `E53_Place4` | `http://www.cidoc-crm.org/cidoc-crm/P87_is_identified_by` | `E48_Place_Name4`|
| `E53_Place4` | `http://www.cidoc-crm.org/cidoc-crm/P89_falls_within` | `E53_Place3`|
| `E53_Place5` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type5`|
| `E53_Place5` | `http://www.cidoc-crm.org/cidoc-crm/P87_is_identified_by` | `E48_Place_Name5`|
| `E53_Place5` | `http://www.cidoc-crm.org/cidoc-crm/P89_falls_within` | `E53_Place4`|
| `E53_Place6` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type6`|
| `E53_Place6` | `http://www.cidoc-crm.org/cidoc-crm/P87_is_identified_by` | `E48_Place_Name6`|
| `E53_Place6` | `http://www.cidoc-crm.org/cidoc-crm/P89_falls_within` | `E53_Place5`|
| `E53_Place7` | `http://www.cidoc-crm.org/cidoc-crm/P2_has_type` | `E55_Type7`|
| `E53_Place7` | `http://www.cidoc-crm.org/cidoc-crm/P87_is_identified_by` | `E48_Place_Name7`|
| `E53_Place7` | `http://www.cidoc-crm.org/cidoc-crm/P89_falls_within` | `E53_Place6`|
| `E53_Place8` | `http://www.cidoc-crm.org/cidoc-crm/P87_is_identified_by` | `E47_Spatial_Coordinates1`|
| `E53_Place9` | `http://www.cidoc-crm.org/cidoc-crm/P87_is_identified_by` | `E47_Spatial_Coordinates1`|
