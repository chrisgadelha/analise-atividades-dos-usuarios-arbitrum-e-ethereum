# Ethereum vs. Arbitrum: Análise de atividade dos usuários (Q4 2025)

![Status](https://img.shields.io/badge/Status-Completed-success)
![Tools](https://img.shields.io/badge/Tools-Dune_Analytics_%7C_SQL-orange)
![Network](https://img.shields.io/badge/Network-Arbitrum_%7C_Ethereum-blue)

> **Autor:** [Christian Gadelha | Economista & Embaixador Arbitrum
> **Ferramenta:** Dune Analytics

## 📌 Visão Geral
Este projeto analisa o comportamento dos usuários na **Ethereum (Camada 1)** versus **Arbitrum (Camada 2)** durante o último trimestre de 2025 (Outubro a Dezembro).

O objetivo principal foi investigar a **elasticidade-preço da demanda** por espaço em bloco: será que taxas menores apenas atraem novos usuários ou alteram fundamentalmente a *intensidade* com que os usuários atuais utilizam a rede?

### 🛠 Ferramentas Utilizadas
* **Dune Analytics** (Extração de Dados)
* **SQL** (Agregações, Window Functions, Joins, Date Truncation)
* **Análise Econômica** (Teoria de Elasticidade e Bens Substitutos)

---

## 📊 Principais Descobertas

### 1. O Paradoxo do Volume vs. Usuários
Ao comparar os dados diários, identificamos um padrão divergente:

<img width="1933" height="719" alt="Volume Diário de Transações_ L1 vs L2" src="https://github.com/user-attachments/assets/a63bf1e2-a666-451a-9ce3-48cccf8d0824" />

*Acima: Arbitrum (Azul) processa consistentemente o dobro do volume da Ethereum (Cinza).*

<img width="1933" height="719" alt="Usuários Ativos Diários (DAU)" src="https://github.com/user-attachments/assets/5ba75f87-2a3f-4f5c-a14a-422e9a75f322" />

*Acima: Apesar da diferença de volume, a base de usuários ativos diários (DAU) é similar entre as redes.*

**Insight:** A Ethereum funciona como uma camada de **assentamento** (poucas transações de alto valor por usuário), enquanto a Arbitrum atua como camada de **execução** (alta frequência).

---

### 2. A Prova da Elasticidade: Intensidade de Uso
A métrica mais reveladora foi calcular a média de transações por usuário (`Tx / Active Users`).

<img width="1933" height="719" alt="Intensidade de Uso (Transações por Usuário)" src="https://github.com/user-attachments/assets/550f14c0-0665-4880-ab0a-a026410ad1cf" />


### 🔎 O Teste de Estresse de Outubro (Out 2025)
Durante o período de alta volatilidade no início de outubro (Eventos de Liquidação):
* **Ethereum (Inelástica):** A média permaneceu estável em **~3 tx/usuário**. O alto custo desencoraja operações complexas.
* **Arbitrum (Elástica):** A intensidade explodiu para **>20 tx/usuário**.
* **Conclusão:** O custo marginal próximo a zero na L2 habilita estratégias de automação e trading de alta frequência que são economicamente inviáveis na L1.

---

## 🔗 Links do Dashboard completo do Dune
* [Acessar Dashboard Interativo no Dune](https://dune.com/chrisgadelha/ethereum-vs-arbitrum-analise-de-atividade-dos-usuarios-q4-2025)


---
*Este repositório faz parte do meu portfólio como Analista de Dados Web3.*
