# sample-db-schemas

Coleção de scripts SQL para criar bases de dados de exemplo em MySQL, PostgreSQL e SQL Server. Ideal para treinamentos de SQL, demonstrações de recursos de SGBDs e testes de DBAs.

---

## Conteúdo

- [Visão Geral](#visão-geral)  
- [SGBDs Suportados](#sgbds-suportados)  
- [Contribuições](#contribuições)  


---

## Visão Geral

Este repositório reúne apenas os scripts de criação (DDL) e, quando aplicável, de carga inicial (DML).
Usa-os para:

- Treinar consultas SQL (JOINs, CTEs, WINDOW, etc.)  
- Validar ferramentas de migração e réplica  
- Testar rotinas de backup, restore e tuning  
- Demonstrar features específicas de cada SGBD  

---

## SGBDs Suportados

- **MySQL** 5.7+  
- **PostgreSQL** 12+  
- **SQL Server** 2022+  

---
## Contribuições

PRs são bem-vindas! Para adicionar uma nova base:
- Abra uma issue descrevendo a base.
- Crie a pasta na engine correspondente e inclua *-schema.sql (e *-data.sql se houver).
- Adicione instruções de uso no README raiz, se necessário.

