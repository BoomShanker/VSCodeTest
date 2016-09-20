-- Sample Sales Query
-- Author: BoomShanker
-- Date: 9/20/16

select OrderDate, sum(Sales) Sales, sum(Cost) Cost-- Remember, always write out columns. No * here!

into #TempSalesAndCostByDate

from SalesTable

group by OrderDate



select OrderDate, Sales, Cost, 1 - (Cost / Sales) SalesMargin

from #TempSalesAndCostByDate