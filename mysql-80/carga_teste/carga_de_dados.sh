#!/bin/bash

# Configurações do banco
DB="carga_teste"
USER="root"
PASS="danley"
HOST="localhost"

# Tamanho alvo em MB
ALVO_MB=3000
TABELA="dados_clientes"

# Gera uma string de ~1KB
DADO=$(printf 'Texto fake %.0s' {1..100})

# Função para obter tamanho da base
get_db_size_mb() {
  mysql -u$USER -p$PASS -h$HOST -e "
    SELECT ROUND(SUM(data_length + index_length) / 1024 / 1024, 2) AS tamanho_mb
    FROM information_schema.tables
    WHERE table_schema = '$DB';
  " -s --skip-column-names
}

echo "Populando base até atingir ~${ALVO_MB}MB..."

while true; do
  for i in {1..1000}; do
    mysql -u$USER -p$PASS -h$HOST $DB -e "
      INSERT INTO $TABELA (nome, email, documento, observacoes)
      VALUES (
        'Cliente $RANDOM',
        'cliente$RANDOM@exemplo.com',
        'CPF$RANDOM',
        REPEAT('$DADO', 10)
      );
    "
  done

  TAM=$(get_db_size_mb)
  echo "Tamanho atual: ${TAM}MB"

  if (( $(echo "$TAM >= $ALVO_MB" | bc -l) )); then
    echo "Meta de $ALVO_MB MB atingida."
    break
  fi
done
