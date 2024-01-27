-- filtros de negócio

-- qual meu catalogo de tênis ?


-- quais os tênis disponiveis ?
SELECT
	p.brand_id,
	P.brand_name,
	P.product_id,
	P.product_name,
	SUM(P.STOCK_QUANTITY) AS TOTAL_STOCK
FROM VIEW_PRODUCT_STOCK AS P
WHERE P.IS_ACTIVE IS TRUE
GROUP BY P.BRAND_ID,
	P.brand_name,
	P.product_id,
	P.product_name,
	P.IS_ACTIVE
ORDER BY P.product_id


	
-- tamanhos disponíveis
SELECT DISTINCT S.PRODUCTNAME,
	S.SIZE,
	S.STOCKQUANTITY
FROM VIEW_PRODUCT_STOCK AS S
WHERE S.PRODUCT_ID = 1
ORDER BY S.SIZE
	
-- cores disponíveis
SELECT DISTINCT S.PRODUCT_NAME,
	S.COLOR,
	SUM(S.STOCK_QUANTITY)
FROM VIEW_PRODUCT_STOCK AS S
WHERE S.PRODUCT_ID = 2
GROUP BY S.PRODUCT_NAME,
	S.COLOR