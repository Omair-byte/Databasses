alter session set current_schema = builder2;

describe BUILDER2.stock
--Question A
select stock_code, stock_description, unit_price, unitcostprice from BUILDER2.stock;

--Question B
select stock_code, 
stock_description, 
to_char(UNIT_PRICE,'U9,999.99'), 
to_char(unitcostprice,'U9,999.99') 
FROM BUILDER2.stock;

--Question C
select stock_code "Stock Code",
Stock_description "Stock Description",
to_char(UNIT_PRICE,'U9,999.99')"Unit Price",
to_char(unitcostprice,'U9,999.99')"Unit Price Cost"
from Builder2.stock;


--Question D
select stock_code "Stock Code",
Stock_description "Stock Description",
to_char(UNIT_PRICE,'U9,999.99')"Unit Price",
to_char(unitcostprice,'U9,999.99')"Unit Price Cost",
to_char(unit_price - unitcostprice,'U9,999.99')"Profit"
from Builder2.stock;


--Question E
select stock_code "Stock Code",
Stock_description "Stock Description",
to_char(UNIT_PRICE,'U9,999.99')"Unit Price",
to_char(unitcostprice,'U9,999.99')"Unit Price Cost",
to_char(unit_price - unitcostprice,'U9,999.99')"Profit"
from Builder2.stock
order by (unit_price - unitcostprice);


--Question G
select 'the stock item'||stock_code||'is a '||stock_description from Builder2.stock;




alter session set current_schema = pobyrne;

describe pobyrne.m_movies;
commit;




