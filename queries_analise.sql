-- PROJETO: Dashboard de Análise de Vendas (Superstore)
-- AUTOR: João Victor Silva dos Santos
-- FERRAMENTA: MySQL Workbench / Power BI

-- ============================================================
-- 1. Criação do Banco de Dados
-- ============================================================
CREATE DATABASE IF NOT EXISTS projetovendas;
USE projetovendas;

-- ============================================================
-- 2. Visualização rápida da tabela importada (dados crus)
-- ============================================================
SELECT * FROM superstore_sales LIMIT 10;

-- ============================================================
-- 3. Tratamento e Conversão de Datas (ETL)
-- A coluna order_date vem como texto (varchar) no formato
-- MM/DD/YYYY, então precisa ser convertida para o tipo DATE
-- antes de qualquer análise temporal.
-- ============================================================
SELECT
    order_id,
    STR_TO_DATE(order_date, '%m/%d/%Y') AS order_date_format,
    sales,
    category,
    sub_category,
    customer_name
FROM superstore_sales;

-- Para não repetir essa conversão em toda query, criamos uma
-- VIEW com os dados já tratados. Todas as análises abaixo
-- passam a usar essa view, e não mais a tabela crua.
CREATE OR REPLACE VIEW vw_superstore_sales_tratada AS
SELECT
    order_id,
    STR_TO_DATE(order_date, '%m/%d/%Y') AS order_date,
    sales,
    category,
    sub_category,
    customer_name
FROM superstore_sales;

-- ============================================================
-- 4. Consultas Analíticas (KPIs e Métricas de Negócio)
-- Todas as queries abaixo usam a view tratada (dados limpos)
-- ============================================================

-- A. Faturamento Total (Total de Vendas)
SELECT
    SUM(sales) AS faturamento_total
FROM vw_superstore_sales_tratada;

-- B. Total de Pedidos Únicos
SELECT
    COUNT(DISTINCT order_id) AS total_pedidos
FROM vw_superstore_sales_tratada;

-- C. Faturamento por Categoria de Produto
SELECT
    category,
    SUM(sales) AS total_vendas_categoria
FROM vw_superstore_sales_tratada
GROUP BY category
ORDER BY total_vendas_categoria DESC;

-- D. Faturamento por Subcategoria
SELECT
    sub_category,
    SUM(sales) AS total_vendas_subcategoria
FROM vw_superstore_sales_tratada
GROUP BY sub_category
ORDER BY total_vendas_subcategoria DESC;

-- E. Faturamento por Mês (usa a data já tratada como DATE)
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS mes,
    SUM(sales) AS faturamento_mes
FROM vw_superstore_sales_tratada
GROUP BY mes
ORDER BY mes;
