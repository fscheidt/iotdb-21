https://github.com/fscheidt/iotdb-21/blob/master/dataset/books/books.json

git clone https://github.com/fscheidt/iotdb-21.git --depth 1



Roteiro aula:
- NoSQL, MongoDB
- mongoimport
- setup jupyter notebook
- integração python mongodb
- visualização dados matplotlib

## Baixar:
 books.json

## Acesso ao mongo:

mongo

## comandos

show databases;

### importar o banco books.json
rodar no mesmo diretório onde esta o arquivo:

```
mongoimport --db booksdb --collection books --file books.json
```

```
use booksdb
```

```
show tables
```

Select limit 1
```
db.books.findOne()
```

Select where id
```
db.books.find({"_id": 3})
```

## Jupyter notebook
abortado

## Colab
https://colab.research.google.com/notebooks/intro.ipynb


```
!apt install mongodb
```

```
!service mongodb start
```

```
!mongoimport --db booksdb --collection books --file sample_data/books.json
```

```
import pymongo
client = pymongo.MongoClient()
db = client.get_database('booksdb')
```

```
db.books.find_one()
```

Upload direto do github:
```
!wget https://raw.githubusercontent.com/fscheidt/iotdb-21/master/dataset/books/books.json
```








