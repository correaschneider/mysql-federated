# mysql-federated

POC para testar o MySQL Federated Engine.

## Setup

```bash
docker-compose up -d
```

## Teste

Acesse o banco mysql1 e insira um registro, após isso, acesse o banco mysql2 e consulte a tabela test.

```bash
docker compose exec mysql1 mysql -u user -ppassword -e "INSERT INTO test (id, name) VALUES (1, 'John');"
docker compose exec mysql2 mysql -u user -ppassword -e "SELECT * FROM test;"
```
