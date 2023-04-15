# CDC com Debezium

Primeiro, vamos subir a estrutura do Kafka, Kafka Connect e MySQL usando docker-compose:

```bash
docker-compose -f docker-compose-mysql.yaml up -d
```

Logo depois, utilizando algum cliente SQL (eu gosto bastante do DBEAVER), cheque as tabelas que vamos utilizar de laboratório nessa aula. As tabelas estão dentro da database **inventory**. Use alguns comandos como

```sql
use inventory;

show tables;

SELECT * FROM customers;
```

Note que esta instância do MySQL já está devidamente configurada para a utilização de um leitor de logs como o Debezium. Para mais informações, acesse [este link](https://debezium.io/documentation/reference/stable/connectors/mysql.html#setting-up-mysql).

Em seguida, vamos fazer o deploy do conector debezium para MySQL. As configurações já estão prontas no arquivo [inventory-source-debezium.config](./source/inventory-source-debezium.config). Faça atenção às configurações desse arquivo.

Para fazer o deploy, utilizamos CURL para enviar o arquivo de configurações numa chamada à API do Kafka Connect da seguinte maneira:

```bash
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @./source/inventory-source-debezium.config
```

Em seguida, vamos verificar se o tópico kafka foi criado corretamente:

```bash
docker-compose -f docker-compose-mysql.yaml exec kafka /kafka/bin/kafka-topics.sh --bootstrap-server kafka:9092 --list
```

Repare que vários tópicos com o prefixo dbserver1.inventory foram criados. Agora, vamos verificar se as modificações estão chegando corretamente. Para isso, iremos exibir as mensagens do tópico da tabela customers no console:

```bash
docker-compose -f docker-compose-mysql.yaml exec kafka /kafka/bin/kafka-console-consumer.sh \
    --bootstrap-server kafka:9092 \
    --from-beginning \
    --property print.key=true \
    --topic dbserver1.inventory.customers
```

Veja que o console está apresentando, em tempo real, as mensagens existentes nesse tópico. Agora, vamos criar algumas modificações na base de customers. Vamos criar um cliente novo, alterar um já existente e deletar um cliente:

```sql
INSERT INTO customers (id, first_name, last_name, email)
VALUES (1005, 'Neylson', 'Crepalde', 'nc@email.com');

UPDATE customers 
SET first_name='Anne Marie' WHERE id=1004;

DELETE FROM customers WHERE id=1003;
```

Perceba que quando criamos uma nova linha ou fazemos modificações, debezium traz esses eventos para o tópico e podemos visualizá-los na tela.

Para fazer a entrega das mensagens em um destino comum, por exemplo, AWS, é necessário apenas configurar e deployar um conector sink do Kafka Connect para o S3. Essa atividade foge ao escopo da nossa aula. Para mais informações siga o passo a passo nesta outra aula publicada [aqui](https://github.com/neylsoncrepalde/igti_edc_mod2_aula_interativa_1/tree/main/connect).

Para encerrar os recursos, basta fazer

```bash
docker-compose -f docker-compose-mysql.yaml down
```