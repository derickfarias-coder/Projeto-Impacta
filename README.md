# Leitos SUS PowerBI

Projeto acadêmico de **Business Intelligence** desenvolvido em **Microsoft Power BI**, com foco na análise de dados de leitos hospitalares do **Sistema Único de Saúde (SUS)** no Brasil.

O projeto está sendo desenvolvido de forma incremental, com novas análises sendo adicionadas a cada entrega acadêmica.

## Objetivo do Projeto

Transformar dados de leitos hospitalares do SUS em informações visuais e indicadores que permitam analisar a **quantidade, distribuição e evolução dos leitos hospitalares** no Brasil.

As análises consideram diferentes dimensões, como **estados, regiões, competências mensais, tipos de unidade e natureza jurídica dos estabelecimentos**.

## Tecnologias Utilizadas

- Microsoft Power BI
- Power Query
- DAX
- SQL SERVER
- CSV
- GitHub

## AC1 — Panorama dos Leitos Hospitalares do SUS

A primeira entrega do projeto tem como foco a **análise geral da oferta de leitos hospitalares do SUS no Brasil**.

O objetivo da AC1 é apresentar uma visão inicial sobre a quantidade de leitos existentes, a participação dos leitos destinados ao SUS e sua distribuição geográfica.

### Principais indicadores

- Total de Leitos
- Leitos SUS
- Leitos Não SUS
- Percentual de Leitos SUS
- Leitos de UTI SUS
- Percentual de UTI SUS
- Evolução mensal dos leitos

### Principais análises

- Evolução dos leitos ao longo das competências analisadas
- Distribuição de leitos SUS por estado
- Distribuição de leitos SUS por região
- Comparação entre leitos SUS e Não SUS
- Distribuição dos leitos SUS por natureza jurídica
- Ranking dos estados com maior quantidade de leitos SUS

### Filtros disponíveis

- Competência
- Região
- UF
- Natureza Jurídica
- Tipo de Unidade

Os indicadores e gráficos são atualizados dinamicamente conforme os filtros selecionados.

## Dashboard da AC1

A primeira página do dashboard apresenta uma visão geral dos leitos hospitalares do SUS, utilizando cartões de indicadores, gráficos de evolução, mapa coroplético do Brasil e gráficos de distribuição.

O mapa utiliza uma escala de cores em tons de verde, permitindo identificar visualmente os estados com maior concentração de leitos SUS.

## Tratamento dos Dados

Os dados utilizados no projeto são disponibilizados em arquivos **CSV** e foram tratados e organizados utilizando **Power Query** e **SQL**.

Durante o tratamento foram realizadas etapas de organização, padronização e preparação dos dados para utilização no Power BI.

Também foram criados campos auxiliares para facilitar as análises geográficas, como a identificação dos estados por nome e a referência territorial do Brasil.

O modelo utiliza medidas desenvolvidas em **DAX** para realizar os cálculos dos indicadores e alimentar os gráficos e visualizações do dashboard.

## Fonte dos Dados

Os dados utilizados neste projeto são provenientes do **Portal de Dados Abertos do SUS**, mantido pelo Ministério da Saúde.

O conjunto de dados **Hospitais e Leitos** disponibiliza informações sobre estabelecimentos hospitalares, leitos gerais e complementares, além de informações relacionadas aos estabelecimentos de saúde.

Os dados são disponibilizados por **competência mensal**, permitindo realizar análises da evolução dos leitos ao longo do tempo.

> Fonte: Ministério da Saúde — Portal de Dados Abertos do SUS
> 
> Conjunto de dados: Hospitais e Leitos

## Estrutura do Projeto

```text
Leitos_SUS_PowerBI
│
├── Dados
│   └── Leitos_2026.csv
│
├── SQL
│   └── Projeto_Impacta.sql
│
├── PowerBI
│   └── Projeto_Impacta_AC1
│
└── README.md
