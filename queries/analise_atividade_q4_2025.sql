-- Comparação de Atividade e Intensidade: Ethereum vs Arbitrum
-- Período: Último trimestre de 2025

WITH eth_activity AS (
    SELECT 
        DATE_TRUNC('day', block_time) AS dia,
        COUNT(*) AS tx_count_eth,
        COUNT(DISTINCT "from") AS active_users_eth
    FROM ethereum.transactions
    WHERE block_time >= DATE '2025-10-01'
      AND block_time <= DATE '2025-12-31'
    GROUP BY 1
),

arb_activity AS (
    SELECT 
        DATE_TRUNC('day', block_time) AS dia,
        COUNT(*) AS tx_count_arb,
        COUNT(DISTINCT "from") AS active_users_arb
    FROM arbitrum.transactions
    WHERE block_time >= DATE '2025-10-01'
      AND block_time <= DATE '2025-12-31'
    GROUP BY 1
)

SELECT 
    e.dia,
    
   
    e.tx_count_eth,
    a.tx_count_arb,
    e.active_users_eth,
    a.active_users_arb,
    
    
    CAST(e.tx_count_eth AS DOUBLE) / e.active_users_eth AS tx_per_user_eth,
    CAST(a.tx_count_arb AS DOUBLE) / a.active_users_arb AS tx_per_user_arb

FROM eth_activity e
JOIN arb_activity a ON e.dia = a.dia
ORDER BY e.dia ASC
;
