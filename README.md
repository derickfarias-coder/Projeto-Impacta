# Projeto Impacta — Leitos Hospitalares do SUS

Projeto acadêmico de **Business Intelligence** desenvolvido em **Microsoft Power BI**, com foco na análise da oferta e distribuição de leitos hospitalares do Sistema Único de Saúde (SUS).

O projeto está sendo desenvolvido de forma incremental, com novas análises sendo adicionadas a cada entrega acadêmica.

## Objetivo do Projeto

Transformar dados públicos do SUS em informações visuais e indicadores que permitam analisar a quantidade, evolução e distribuição dos leitos hospitalares destinados ao atendimento pelo SUS no Brasil.

## Tecnologias Utilizadas

- Microsoft Power BI
- Power Query
- DAX
- SQL
- CSV
- GitHub
- Git

## AC1 — Panorama dos Leitos Hospitalares do SUS

A primeira entrega do projeto tem como foco a **análise da oferta de leitos hospitalares do SUS no Brasil**.

### Principais indicadores

- Total de Leitos
- Leitos SUS
- Percentual de Leitos SUS
- Leitos Não SUS
- Leitos UTI SUS
- Evolução dos Leitos
- Distribuição de Leitos por Estado
- Distribuição de Leitos por Região
- Leitos SUS por Natureza Jurídica

### Filtros disponíveis

- Data
- Região
- UF
- Natureza Jurídica
- Tipo de Unidade

Os indicadores e gráficos são atualizados dinamicamente conforme os filtros selecionados.

### Visualizações

- Cards com os principais indicadores
- Gráfico de linha com a evolução dos leitos
- Mapa preenchido com a distribuição dos leitos SUS por estado
- Gráfico de barras com os leitos SUS por região
- Gráfico de rosca comparando Leitos SUS e Não SUS
- Gráfico de barras com os leitos SUS por natureza jurídica
- Ranking dos estados com maior quantidade de leitos SUS

### Vídeo de apresentação da AC1

> Assistir à apresentação da AC1 no YouTube: ""

## Estrutura do Projeto

```text
Projeto_Impacta
│
├── Dados
│   └── Leitos_2026.csv
│
├── SQL
│   └── Projeto_Impacta
│
├── PowerBI
│   └── Projeto_Impacta_AC1
│
└── README.md
```

O arquivo utilizado como fonte é carregado no Power BI por meio do Power Query.

Os dados foram tratados e organizados para permitir a análise das informações de leitos hospitalares por competência, estado, região, natureza jurídica e tipo de unidade.

Também foram realizadas transformações para adequar as informações geográficas utilizadas no mapa do Power BI, como a identificação dos estados brasileiros a partir da sigla da UF e a informação de país utilizada na localização geográfica.

O modelo também utiliza medidas desenvolvidas em DAX para realizar os cálculos e alimentar os indicadores e visualizações do dashboard.

## Fonte dos Dados

Os dados utilizados neste projeto são provenientes do Portal de Dados Abertos do SUS, disponibilizados pelo Ministério da Saúde, por meio do conjunto de dados **Hospitais e Leitos**.

O conjunto disponibiliza dados gerais dos estabelecimentos hospitalares, leitos gerais e complementares e informações relacionadas aos estabelecimentos de saúde. As informações são disponibilizadas por competência mensal e possuem atualização periódica.

Para este projeto foi utilizado o recurso **Leitos 2026**, disponibilizado em formato CSV.

- Portal de Dados Abertos do SUS: https://dadosabertos.saude.gov.br/dataset
- Conjunto de dados "Hospitais e Leitos": https://dadosabertos.saude.gov.br/dataset/hospitais-e-leitos
- Recurso "Leitos 2026": https://dadosabertos.saude.gov.br/dataset/hospitais-e-leitos/resource/5ac78b13-649f-4b09-8a92-0ae829a56d50
- Download direto do CSV (Leitos 2026): https://s3.sa-east-1.amazonaws.com/ckan.saude.gov.br/Leitos_SUS/Leitos_csv_2026.zip


## Evolução do Projeto

- [x] **AC1** — Panorama dos Leitos Hospitalares do SUS
- [ ] **AC2** — Próxima análise
- [ ] **AC3** — Próxima análise
- [ ] **AC4** — Próxima análise
- [ ] **Prova** — Análise final

## 👨‍💻 Autor

**Derick Augusto de Farias**

Projeto desenvolvido para fins acadêmicos.
