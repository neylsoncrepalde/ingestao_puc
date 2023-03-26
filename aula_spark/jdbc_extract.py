from pyspark.sql import functions as f
from pyspark.sql import SparkSession

POSTGRES_URL = "jdbc:postgresql://localhost:5432/postgres"

spark = (
    SparkSession.builder
    .config("spark.jars.packages", "org.postgresql:postgresql:42.4.0")
    .getOrCreate()
)

print("Lendo do Postgresql!!!")

produtos = (
    spark.read.format('jdbc')
    .option('url', POSTGRES_URL)
    .option("driver", "org.postgresql.Driver")
    .option("user", "postgres")
    .option("password", "postgres")
    .option('dbtable', 'public.products')
    .option('fetchsize', 1000)
    .load()
)

usuarios = (
    spark.read.format('jdbc')
    .option('url', POSTGRES_URL)
    .option("driver", "org.postgresql.Driver")
    .option("user", "postgres")
    .option("password", "postgres")
    .option('dbtable', 'public.users')
    .option('fetchsize', 1000)
    .load()
)

vendas = (
    spark.read.format('jdbc')
    .option('url', POSTGRES_URL)
    .option("driver", "org.postgresql.Driver")
    .option("user", "postgres")
    .option("password", "postgres")
    .option('dbtable', 'public.sales')
    .option('fetchsize', 1000)
    .load()
)

produtos.show()
usuarios.show()
vendas.show()

print("Escrevendo as tabelas")

produtos.write.format('parquet').mode("overwrite").save('dados/produtos')
usuarios.write.format('parquet').mode("overwrite").save('dados/usuarios')
vendas.write.format('parquet').mode("overwrite").save('dados/vendas')
