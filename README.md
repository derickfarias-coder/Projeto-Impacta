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

## AC2 — Perfil e Distribuição dos Leitos Hospitalares do SUS

A segunda entrega do projeto tem como foco a **análise do perfil e da distribuição dos leitos hospitalares do SUS no Brasil**, permitindo compreender como a estrutura hospitalar está distribuída entre os diferentes tipos de estabelecimentos, especialidades e naturezas jurídicas.

### Principais indicadores

- Total de Estabelecimentos de Saúde
- Estabelecimentos com Leitos SUS
- Média de Leitos SUS por Estabelecimento
- Leitos SUS por Tipo de Unidade
- Leitos SUS por Especialidade
- Leitos SUS por Natureza Jurídica
- Participação dos Estabelecimentos Públicos e Privados
- Distribuição dos Leitos por Região
- Distribuição dos Leitos por Município

### Filtros disponíveis

- Data
- Região
- UF
- Município
- Natureza Jurídica
- Tipo de Unidade
- Tipo de Leito

Os indicadores e gráficos são atualizados dinamicamente conforme os filtros selecionados.

### Visualizações

- Cards com os principais indicadores de estabelecimentos e leitos
- Gráfico de barras com a quantidade de leitos por tipo de unidade
- Gráfico de barras com a distribuição de leitos por especialidade
- Gráfico de rosca comparando a participação dos estabelecimentos públicos e privados
- Gráfico de barras com a média de leitos SUS por estabelecimento
- Gráfico de barras com a distribuição dos leitos SUS por região
- Ranking dos municípios com maior quantidade de leitos SUS

---

## AC3 — Evolução e Movimentação dos Leitos Hospitalares do SUS

A terceira entrega do projeto tem como foco a **análise da evolução e da movimentação dos leitos hospitalares do SUS no Brasil**, identificando as entradas, saídas, ampliações e reduções na capacidade hospitalar ao longo dos períodos analisados.

### Principais indicadores

- Total de Leitos no Período
- Leitos Adicionados
- Leitos Ampliados
- Leitos Reduzidos
- Leitos de Estabelecimentos que Entraram na Base
- Leitos de Estabelecimentos que Saíram da Base
- Saldo Líquido de Leitos
- Estabelecimentos com Alteração na Quantidade de Leitos
- Evolução Mensal dos Leitos

### Filtros disponíveis

- Data
- Região
- UF
- Município
- Natureza Jurídica
- Tipo de Unidade

Os indicadores e gráficos são atualizados dinamicamente conforme os filtros selecionados.

### Visualizações

- Cards com os principais indicadores de movimentação dos leitos
- Gráfico de barras com a movimentação de leitos, separando entradas, ampliações, reduções e saídas
- Gráfico de barras com a variação líquida de leitos por Unidade Federativa
- Gráfico de colunas com a quantidade de estabelecimentos por tipo de movimentação
- Gráfico de linha com a evolução mensal do saldo de leitos hospitalares

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
│   └── Projeto_Impacta_AC2
│   └── Projeto_Impacta_AC3
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
- [x] **AC2** — Estrutura da Rede Hospitalar do SUS
- [x] **AC3** — Evolução e Movimentação dos Leitos Hospitalares
- [ ] **AC4** — Análise final

## 👨‍💻 Autor

**Derick Augusto de Farias**

Projeto desenvolvido para fins acadêmicos.
