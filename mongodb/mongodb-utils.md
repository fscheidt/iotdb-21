[MongoDB](/mongodb/mongo.md)

# Comandos utilitários

Para manutenção do database e collections.

## Importação

### CSV
Importar csv com header:
```bash
mongoimport --db crop --collection metadata --type csv --headerline --file spymemcached.csv
```

Importar csv sem header, especificando a ordem dos campos
```bash
mongoimport --db users --collection contacts --type csv --file data.csv --fields["name","surname","etc"]
# OR
mongoimport --db users --collection contacts --type csv --file data.csv --fields name,surname,etc
```

### JSON
importar arquivo json para o mongo:
```bash
mongoimport --db codereview --collection review --file qt.json             
```

importar json e dropar collection se existir:
```bash
mongoimport --db codereview --collection review --drop --file qt.json
```

---

## Clonar database
Algumas vezes é bom criar uma cópia do database no caso de precisar restaurar depois a versão original. Usando mongodump para criar uma cópia (arquivo) e mongorestore para criar um novo database com base no backup.

Rodar no shell:
```bash
mongodump -d customersdb -o mongodump/
mongorestore -d customersdb_v2 mongodump/customersdb/
```

---

## Service

Para gerenciar o mongod (serviço).

Iniciar o mongod service:
```bash
sudo systemctl start mongod
```

Para o service:
```bash 
sudo systemctl stop mongod
```

Verificar o status do servidor: 
```bash
sudo systemctl status mongod
```

Habilitar inicialização do serviço no boot do linux
```bash
sudo systemctl enable mongod
```
