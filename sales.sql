-- Sample Sales Query
-- Author: BoomShanker
-- Date: 9/20/16

select OrderDate, sum(Sales) Sales -- Remember, always write out columns. No * here!

from SalesTable

group by OrderDate
