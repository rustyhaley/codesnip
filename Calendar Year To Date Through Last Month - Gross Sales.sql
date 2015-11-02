--Calendar Year To Date Through Last Month - Gross Sales
select * from IFSIntegration.dbo.PFX_REPORT_PIVOT_DUMP_BRAND_XXX
where DATE_INVOICED between
          cast('1-1-' + cast(year(dateadd(yy, 0, getdate())) as varchar) as datetime) --First of This Year
          and
          DATEADD(d, -1, cast(MONTH(getdate()) as varchar) + '-1-' + cast(YEAR(getdate()) as varchar)) --Last of Last Month
     and order_record_type = 'SALE' --Gross Sales No Returns
     and CHARINDEX('pfx',CUSTOMER_NAME) = 0
     and substring (CUST_NO, 0 ,1 ) NOT IN ('X','Z','T')
