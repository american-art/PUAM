SELECT D.DimensionID,
	DX.DimItemElemXrefID,
	DX.ID AS ObjectID,
	DE.Element,
	DX.Rank AS ElementRank,
	--DX.DisplayDimensions,
	DX.Description AS ElemDescription,
	DT.DimensionType,
	D.Rank AS DimRank,
	D.Dimension,
	CASE 
		WHEN D.PrimaryUnitID in (1, 2) THEN 'centimeters'
		WHEN D.PrimaryUnitID in (3, 4, 5) THEN 'kilograms' --need to adjust grams in TMS for this to be accurate
		WHEN D.PrimaryUnitID=6 THEN 'minutes'
		WHEN D.PrimaryUnitID=7 THEN 'seconds'
		ELSE NULL
	END AS DimUnit
INTO puamapi.dbo.apiObjdimxrefs
FROM TMS.dbo.DimItemElemXrefs DX 
	INNER JOIN TMS.dbo.DimensionElements DE ON DE.ElementID=DX.ElementID
	LEFT OUTER JOIN TMS.dbo.Objects O ON O.ObjectID=DX.ID AND DX.TableID=108
	LEFT OUTER JOIN TMS.dbo.Dimensions D
		LEFT OUTER JOIN TMS.dbo.DimensionTypes DT ON DT.DimensionTypeID=D.DimensionTypeID
		LEFT OUTER JOIN TMS.dbo.DimensionUnits DU ON D.PrimaryUnitID=DU.UnitID
	ON D.DimItemElemXrefID=DX.DimItemElemXrefID AND D.Displayed=1
WHERE DX.TableID=108 AND DX.Displayed=1 AND O.PublicAccess=1 AND D.Dimension<>0