--Last Month's Customers
select DISTINCT
        CUST_NO
       ,CUSTOMER_SHIP_ID
       ,CUSTOMER_NAME
       ,CUSTOMER_ADDRESS
       ,CUSTOMER_CITY
       ,CUSTOMER_ST
       ,CUSTOMER_ZIP
       ,CUSTOMER_PHONE
from IFSIntegration.dbo.PFX_REPORT_PIVOT_DUMP_BRAND_MRK
where DATE_INVOICED between
          DATEADD(m, -1, cast(MONTH(getdate()) as varchar) + '-1-' + cast(YEAR(getdate()) as varchar)) --First of last month yyyy-mm-dd
          and
          DATEADD(d, -1, cast(MONTH(getdate()) as varchar) + '-1-' + cast(YEAR(getdate()) as varchar)) --Last of last month yyyy-mm-dd
     and CHARINDEX('pfx',CUSTOMER_NAME) = 0
