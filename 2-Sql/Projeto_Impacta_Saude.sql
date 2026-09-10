/* =========================================================================================
 PROJETO FACULDADE IMPACTA - ANÁLISE DE DADOS DE LEITOS (2026)
========================================================================================= */

-- Criação e seleção do Banco de Dados do Projeto
CREATE DATABASE Projeto_Impacta_Saude;
GO

USE Projeto_Impacta_Saude;
GO

/* -----------------------------------------------------------------------------------------
 TABELA: dbo.tb_leitos_2026_consolidados (Tabela de Destino)
 DESCRIÇÃO: Tabela final que armazena os dados processados e higienizados.
 Contém as datas convertidas corretamente e as colunas padronizadas.
 Esta é a tabela oficial que servirá como fonte de dados para a
 criação dos dashboards no Power BI.
----------------------------------------------------------------------------------------- */
DROP TABLE IF EXISTS dbo.tb_leitos_2026_consolidados;
GO

/* -----------------------------------------------------------------------------------------
 TABELA: dbo.stg_leitos_2026_brutos (Tabela de Origem / Staging)
 DESCRIÇÃO: Tabela temporária de staging que recebe os dados originais importados
 diretamente do arquivo CSV (Leitos_2026.csv), sem nenhum tratamento
 prévio de tipagem ou nomenclatura.
----------------------------------------------------------------------------------------- */
;WITH base AS (
 SELECT
 DATA = DATEFROMPARTS(
 CAST(LEFT(COMP, 4) AS INT),
 CAST(RIGHT(COMP, 2) AS INT),
 1
 ),
 PAIS = 'Brasil',
 REGIAO,
 UF,
 ESTADO = CASE UF
 WHEN 'AC' THEN 'Acre'
 WHEN 'AL' THEN 'Alagoas'
 WHEN 'AP' THEN 'Amapá'
 WHEN 'AM' THEN 'Amazonas'
 WHEN 'BA' THEN 'Bahia'
 WHEN 'CE' THEN 'Ceará'
 WHEN 'DF' THEN 'Distrito Federal'
 WHEN 'ES' THEN 'Espírito Santo'
 WHEN 'GO' THEN 'Goiás'
 WHEN 'MA' THEN 'Maranhão'
 WHEN 'MT' THEN 'Mato Grosso'
 WHEN 'MS' THEN 'Mato Grosso do Sul'
 WHEN 'MG' THEN 'Minas Gerais'
 WHEN 'PA' THEN 'Pará'
 WHEN 'PB' THEN 'Paraíba'
 WHEN 'PR' THEN 'Paraná'
 WHEN 'PE' THEN 'Pernambuco'
 WHEN 'PI' THEN 'Piauí'
 WHEN 'RJ' THEN 'Rio de Janeiro'
 WHEN 'RN' THEN 'Rio Grande do Norte'
 WHEN 'RS' THEN 'Rio Grande do Sul'
 WHEN 'RO' THEN 'Rondônia'
 WHEN 'RR' THEN 'Roraima'
 WHEN 'SC' THEN 'Santa Catarina'
 WHEN 'SP' THEN 'São Paulo'
 WHEN 'SE' THEN 'Sergipe'
 WHEN 'TO' THEN 'Tocantins'
 ELSE NULL END,
 MUNICIPIO,
 BAIRRO = NO_BAIRRO,
 NU_ENDERECO,
 CEP_COD_IGBE = CO_IBGE,
 CO_CEP,
 CNES,
 HOSPITAL = NOME_ESTABELECIMENTO,
 RAZAO_SOCIAL,
 TP_GESTAO,
 ID_TIPO_UNIDADE = CO_TIPO_UNIDADE,
 TIPO_UNIDADE = DS_TIPO_UNIDADE,
 NATUREZA_JURIDICA,
 DESC_NATUREZA_JURIDICA,
 LEITOS_EXISTENTES,
 LEITOS_SUS,
 UTI_TOTAL_EXIST,
 UTI_TOTAL_SUS,
 UTI_ADULTO_EXIST,
 UTI_ADULTO_SUS,
 UTI_PEDIATRICO_EXIST,
 UTI_PEDIATRICO_SUS,
 UTI_NEONATAL_EXIST,
 UTI_NEONATAL_SUS,
 UTI_QUEIMADO_EXIST,
 UTI_QUEIMADO_SUS,
 UTI_CORONARIANA_EXIST,
 UTI_CORONARIANA_SUS
 FROM dbo.stg_leitos_2026_brutos
)
SELECT
 DATA,
 ANO = YEAR(DATA),
 MES = MONTH(DATA),
 PAIS,
 REGIAO,
 UF,
 ESTADO,
 MUNICIPIO,
 BAIRRO,
 NU_ENDERECO,
 CEP_COD_IGBE,
 CO_CEP,
 CNES,
 HOSPITAL,
 RAZAO_SOCIAL,
 TP_GESTAO,
 ID_TIPO_UNIDADE,
 TIPO_UNIDADE,
 NATUREZA_JURIDICA,
 DESC_NATUREZA_JURIDICA,
 LEITOS_EXISTENTES = CAST(LEITOS_EXISTENTES AS INT),
 LEITOS_SUS = CAST(LEITOS_SUS AS INT),
 UTI_TOTAL_EXIST = CAST(UTI_TOTAL_EXIST AS INT),
 UTI_TOTAL_SUS = CAST(UTI_TOTAL_SUS AS INT),
 UTI_ADULTO_EXIST = CAST(UTI_ADULTO_EXIST AS INT),
 UTI_ADULTO_SUS = CAST(UTI_ADULTO_SUS AS INT),
 UTI_PEDIATRICO_EXIST = CAST(UTI_PEDIATRICO_EXIST AS INT),
 UTI_PEDIATRICO_SUS = CAST(UTI_PEDIATRICO_SUS AS INT),
 UTI_NEONATAL_EXIST = CAST(UTI_NEONATAL_EXIST AS INT),
 UTI_NEONATAL_SUS = CAST(UTI_NEONATAL_SUS AS INT),
 UTI_QUEIMADO_EXIST = CAST(UTI_QUEIMADO_EXIST AS INT),
 UTI_QUEIMADO_SUS = CAST(UTI_QUEIMADO_SUS AS INT),
 UTI_CORONARIANA_EXIST = CAST(UTI_CORONARIANA_EXIST AS INT),
 UTI_CORONARIANA_SUS = CAST(UTI_CORONARIANA_SUS AS INT)
INTO dbo.tb_leitos_2026_consolidados
FROM base;

-- Consulta para validação final dos dados gerados
SELECT * FROM dbo.tb_leitos_2026_consolidados
ORDER BY DATA;