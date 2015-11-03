
--2 years back from today
select dateadd(m, -24, getdate())

--Rolling 24 months
select dateadd(m, -24, cast(cast(month(dateadd(m, -1, getdate())) as varchar) + '-1-' + cast(year(dateadd(m, -1, getdate())) as varchar) as datetime))

--This month YYYYMM
select Left(replace(convert(varchar(10), dateadd(m, -23, cast(cast(month(dateadd(m, -1, getdate())) as varchar) + '-1-' + cast(year(dateadd(m, -1, getdate())) as varchar) as datetime)), 102), '.', ''),6) 'This month YYYYMM two years ago'

--First of this month yyyy-mm-dd
select cast(convert(varchar(10), dateadd(m, -23, cast(cast(month(dateadd(m, -1, getdate())) as varchar) + '-1-' + cast(year(dateadd(m, -1, getdate())) as varchar) as datetime)), 120) as datetime) 'First of this month yyyy-mm-dd'

--Last of this month yyyy-mm-dd
select DATEADD(d, -1, DATEADD(m, 1, cast(MONTH(getdate()) as varchar) + '-1-' + cast(YEAR(getdate()) as varchar))) 'Last of this month yyyy-mm-dd'

--First of last month yyyy-mm-dd
select DATEADD(m, -1, cast(MONTH(getdate()) as varchar) + '-1-' + cast(YEAR(getdate()) as varchar)) 'First of last month yyyy-mm-dd'

--Last of last month yyyy-mm-dd
select DATEADD(d, -1, cast(MONTH(getdate()) as varchar) + '-1-' + cast(YEAR(getdate()) as varchar)) 'Last of last month yyyy-mm-dd'

--Current quarter yyyy"Q"N
select CAST(DATEPART(year,getdate()) as varchar) + 'Q' + CAST(DATEPART(quarter,getdate()) as varchar) 'Current quarter yyyy"Q"N'

--First of last year
select cast('1-1-' + cast(year(dateadd(yy, -1, getdate())) as varchar) as datetime) 'First of last year'

--Formats
select
 getdate() 'Default'--,convert(varchar(40),getdate(),   0) as '0'
,convert(varchar(40),getdate(), 100) as '0-100',convert(varchar(40),getdate(), 101) as '101',convert(varchar(40),getdate(), 103) as '103',convert(varchar(40),getdate(), 104) as '104'
,convert(varchar(40),getdate(), 100) as '105',convert(varchar(40),getdate(), 106) as '106',convert(varchar(40),getdate(), 107) as '107',convert(varchar(40),getdate(), 108) as '108'
,convert(varchar(40),getdate(), 109) as '109',convert(varchar(40),getdate(), 110) as '110',convert(varchar(40),getdate(), 111) as '111',convert(varchar(40),getdate(), 112) as '112'
,convert(varchar(40),getdate(), 113) as '113',convert(varchar(40),getdate(), 114) as '114'
--,convert(varchar(40),getdate(), 115) as '115'--,convert(varchar(40),getdate(), 116) as '116'--,convert(varchar(40),getdate(), 117) as '117'--,convert(varchar(40),getdate(), 118) as '118'--,convert(varchar(40),getdate(), 119) as '119'
select
 convert(varchar(40),getdate(), 120) as '120',convert(varchar(40),getdate(), 121) as '121'
,convert(varchar(40),getdate(), 126) as '126',convert(varchar(40),getdate(), 127) as '127'
--,convert(varchar(40),getdate(), 128) as '128'--,convert(varchar(40),getdate(), 129) as '129'--,convert(varchar(40),getdate(), 130) as '130' --language specific--,convert(varchar(40),getdate(), 131) as '131' --language specific
--,convert(varchar(40),getdate(), 122) as '122'--,convert(varchar(40),getdate(), 123) as '123'--,convert(varchar(40),getdate(), 124) as '124'--,convert(varchar(40),getdate(), 125) as '125'

First Day Of Current Week.
select CONVERT(varchar,dateadd(week,datediff(week,0,getdate()),0),106)

Last Day Of Current Week.
select CONVERT(varchar,dateadd(week,datediff(week,0,getdate()),6),106)

First Day Of Last week.
select CONVERT(varchar,DATEADD(week,datediff(week,7,getdate()),0),106)

Last Day Of Last Week.
select CONVERT(varchar,dateadd(week,datediff(week,7,getdate()),6),106)

First Day Of Next Week.
select CONVERT(varchar,dateadd(week,datediff(week,0,getdate()),7),106)

Last Day Of Next Week.
select CONVERT(varchar,dateadd(week,datediff(week,0,getdate()),13),106)

First Day Of Current Month.
select CONVERT(varchar,dateadd(d,-(day(getdate()-1)),getdate()),106)

Last Day Of Current Month.
select CONVERT(varchar,dateadd(d,-(day(dateadd(m,1,getdate()))),dateadd(m,1,getdate())),106)

First Day Of Last Month.
select CONVERT(varchar,dateadd(d,-(day(dateadd(m,-1,getdate()-2))),dateadd(m,-1,getdate()-1)),106)

Last Day Of Last Month.
select CONVERT(varchar,dateadd(d,-(day(getdate())),getdate()),106)

First Day Of Next Month.
select CONVERT(varchar,dateadd(d,-(day(dateadd(m,1,getdate()-1))),dateadd(m,1,getdate())),106)

Last Day Of Next Month.
select CONVERT(varchar,dateadd(d,-(day(dateadd(m,2,getdate()))),DATEADD(m,2,getdate())),106)

First Day Of Current Year.
select CONVERT(varchar,dateadd(year,datediff(year,0,getdate()),0),106)

Last Day Of Current Year.
select CONVERT(varchar,dateadd(ms,-2,dateadd(year,0,dateadd(year,datediff(year,0,getdate())+1,0))),106)

First Day of Last Year.
select CONVERT(varchar,dateadd(year,datediff(year,0,getdate())-1,0),106)

Last Day Of Last Year.
select CONVERT(varchar,dateadd(ms,-2,dateadd(year,0,dateadd(year,datediff(year,0,getdate()),0))),106)

First Day Of Next Year.
select CONVERT(varchar,dateadd(YEAR,DATEDIFF(year,0,getdate())+1,0),106)

Last Day Of Next Year.
select CONVERT(varchar,dateadd(ms,-2,dateadd(year,0,dateadd(year,datediff(year,0,getdate())+2,0))),106)
