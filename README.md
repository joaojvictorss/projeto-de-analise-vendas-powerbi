# 📊 Dashboard de Análise de Vendas — Superstore

Projeto de análise de dados ponta a ponta: tratamento de dados brutos em SQL, cálculo de KPIs de negócio e visualização em um dashboard interativo no Power BI.

## 🎯 Objetivo

Simular o trabalho de um Analista de Dados dentro de uma empresa de varejo (dataset **Superstore**), respondendo a perguntas de negócio como:

- Qual é o faturamento total da empresa?
- Quantos pedidos únicos foram realizados?
- Quais categorias e subcategorias de produtos mais vendem?
- Como o faturamento se distribui ao longo do tempo?

## 🗂️ Sobre os dados

O dataset utilizado é o **Superstore Sales**, um conjunto de dados público amplamente usado para prática de análise de dados e BI, contendo informações de pedidos, clientes, produtos, categorias e vendas.

> Fonte: (https://www.kaggle.com/datasets/rohitsahoo/sales-forecasting)

## 🛠️ Ferramentas utilizadas

| Ferramenta | Uso |
|---|---|
| MySQL Workbench | Modelagem do banco, ETL e queries analíticas |
| Power BI | Construção do dashboard e visualizações |
| SQL | Tratamento, agregação e extração de KPIs |

## 🔄 Etapas do projeto

1. **Criação do banco de dados** e importação da tabela bruta `superstore_sales`.
2. **Tratamento (ETL)**: conversão do campo de data de texto (`varchar`) para o formato `DATE`, usando `STR_TO_DATE`.
3. **Análise exploratória**: consultas para levantar KPIs de negócio (faturamento total, pedidos únicos, faturamento por categoria e subcategoria).
4. **Construção do dashboard** no Power BI, conectado à base tratada, com os principais indicadores visuais.

## 📈 KPIs extraídos via SQL

- Faturamento total
- Total de pedidos únicos
- Faturamento por categoria de produto
- Faturamento por subcategoria de produto

O script completo está em [`queries_analise.sql`](./queries_analise.sql).

## 🖼️ Preview do Dashboard

> <img width="1415" height="785" alt="Captura de tela 2026-09-10 163838" src="https://github.com/user-attachments/assets/a4ad13f5-0525-4bc9-be0b-777bc6f0e331" />


## 📌 Principais aprendizados

- Prática de ETL básico em SQL (tratamento de datas e limpeza de dados brutos).
- Construção de queries analíticas orientadas a perguntas de negócio.
- Conexão entre banco de dados tratado e ferramenta de BI para visualização.

## 👤 Autor

**João Victor Silva dos Santos**
Estudante de Engenharia de Software | Foco em Análise de Dados (SQL, Python, Power BI)
[LinkedIn](#https://www.linkedin.com/in/jo%C3%A3o-victor-silva-dos-santos/) · 
