# Painel de Indicadores Socioeconômicos de Cuiabá (MT) — Análise com SQL

## 📌 Sobre o Projeto
Este projeto foi desenvolvido com foco em engenharia e análise de dados, estruturando um banco de dados relacional no SQLite para centralizar e analisar indicadores oficiais do município de Cuiabá (MT). Os dados agregados têm como base fontes oficiais consolidadas, incluindo o **IBGE** (Censo Demográfico), **SNIS** (Sistema Nacional de Informações sobre Saneamento) e **DATASUS** / Ministério da Saúde.

O objetivo principal é demonstrar competências práticas em SQL — desde a modelagem de dados relacionais e tratamento de valores nulos até consultas analíticas avançadas para apoiar a tomada de decisão.

---

## 🛠️ Tecnologias e Conceitos Aplicados
* **Banco de Dados:** SQLite
* **Modelagem de Dados:** Criação de tabelas normalizadas, tipagem de dados (`INTEGER`, `REAL`, `TEXT`), chaves primárias autoincrementadas (`PRIMARY KEY AUTOINCREMENT`) e gestão de valores ausentes (`NULL`).
* **Tratamento e Limpeza:** Identificação e eliminação de duplicidades para garantir a integridade dos dados analíticos.
* **Consultas SQL Desenvolvidas:**
  * Filtragem condicional avançada (`WHERE`, `IS NOT NULL`)
  * Agregações estatísticas e agrupamentos (`GROUP BY`, `SUM`)
  * Ordenação analítica orientada a relatórios executivos (`ORDER BY ... DESC`)

---

## 📊 Estrutura da Tabela (`cuiaba_indicadores_sociais`)

| Coluna | Tipo | Descrição |
| :--- | :--- | :--- |
| `id` | INTEGER | Identificador único do registro (Chave Primária) |
| `ano_referencia` | INTEGER | Ano base da coleta ou estimativa oficial do dado |
| `indicador_categoria` | TEXT | Categoria macro (Demografia, Educação, Saneamento, Habitação, Renda, Saúde, Transporte) |
| `descricao_metrica` | TEXT | Detalhamento descritivo da métrica avaliada |
| `valor_absoluto` | REAL | Volume populacional ou absoluto correspondente (quando aplicável) |
| `percentual_estimado` | REAL | Proporção percentual da métrica em relação ao contexto |

---

## 📈 Principais Consultas e Insights
O repositório conta com scripts SQL estruturados para:
1. **Sumarização por Categoria:** Agrupamento de volumes absolutos totais por área de interesse urbano.
2. **Ranking Populacional e Social:** Ordenação decrescente dos maiores volumes de pessoas afetadas por métricas de saúde, habitação, renda e mobilidade, desconsiderando métricas puramente percentuais através de filtros de nulidade (`IS NOT NULL`).
3. -- 1. Sumarização e soma dos valores absolutos por categoria
SELECT indicador_categoria, SUM(valor_absoluto) as total_absoluto
FROM cuiaba_indicadores_sociais
GROUP BY indicador_categoria;

-- 2. Ranking analítico filtrando nulos e ordenando do maior para o menor volume
SELECT indicador_categoria, descricao_metrica, valor_absoluto 
FROM cuiaba_indicadores_sociais 
WHERE valor_absoluto IS NOT NULL 
ORDER BY valor_absoluto DESC;
