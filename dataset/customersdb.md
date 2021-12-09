[Datasets](/datasets/datasets.md)

# Customersdb
Arquivos:
- [versão mysql](/datasets/customersdb/mysql/customersdb.sql)
- [versão mongodb](/datasets/customersdb/mongodb/customersdb-mongo.zip)



## Database schema
source: https://www.richardtwatson.com/dm6e/

![schema](/datasets/customersdb/customersdb-schema.png)

---

## MySQL

### Importar database 

- Download arquivo: [customersdb.sql](/datasets/customersdb/mysql/customersdb.sql)

Criar database:
```sql
create database customersdb;
```

importar arquivo sql:

```bash
mysql -u root -p customersdb < customersdb.sql
```

acessar o mysql:
```sql
show databases;
use customersdb;
```

exibir tabelas:
```sql
show tables;
```

Exibir informações sobre os campos e tipos de uma tabela:
```sql
describe customers;
```

exibir o create statement de uma tabela:
```sql
show create statement customers;
```

---

## MongoDB

### Importar database via script
- Download: [customersdb-mongo.zip](/datasets/customersdb/mongodb/customersdb-mongo.zip)
- Descompactar e executar o script:
```bash
mongo-import.sh
```

### Importação manual

```bash
# baixar zip e descompactar - executar cada comando:
cd customersdb
mongoimport -d customersdb --file customer.json --type json;
mongoimport -d customersdb --file employee.json --type json;
mongoimport -d customersdb --file office.json --type json;
mongoimport -d customersdb --file order.json --type json;
mongoimport -d customersdb --file orderdetail.json --type json;
mongoimport -d customersdb --file product.json --type json;
```

