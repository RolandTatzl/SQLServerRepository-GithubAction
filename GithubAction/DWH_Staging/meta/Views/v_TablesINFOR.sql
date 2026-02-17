CREATE VIEW [meta].[v_TablesINFOR] AS 
SELECT ti.[tabinID]
      ,ti.[tabin_SchemaSOURCE]
      ,ti.[tabin_TableNameSOURCE]
      ,ti.[tabin_Active]
      ,ti.[tabin_TableLoadPRIORITY]
      ,ti.[tabin_serv_ClientID]
      ,ti.[tabin_BusinessCompanyNumber]
      ,ti.[tabin_bcnr_BCNRange]
      ,ti.[tabin_TableNameTARGET]
      ,ti.[tabin_TableCommonName]
      ,ti.[tabin_IncrementDays]
      ,ti.[tabin_IncrementColumn]
      ,lt.LoadTypeID
      ,lt.LoadTypeName
  FROM [meta].[TablesINFOR] ti
  LEFT OUTER
  JOIN [$(DWH_ETL)].etl.LoadType lt
    ON lt.LoadTypeID = 100