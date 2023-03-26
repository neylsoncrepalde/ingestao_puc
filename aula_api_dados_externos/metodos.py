## Metodos
import os
import requests
import json
import pandas as pd

url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/MG/mesorregioes'
json_path = 'dados/mesorregioes_mg.json'
data_path = 'dados/mesorregioes_mg.csv'

def extrai_api():
        response = requests.get(url)
        os.makedirs('dados', exist_ok=True)
        with open(json_path, 'w') as file:
                file.writelines(response.text)
        return True

def json_to_csv():
        with open(json_path, 'r') as file:
                raw_data = file.readlines()
        json_data = json.loads(raw_data[0])
        df = pd.DataFrame(json_data)[['id', 'nome']]
        df.to_csv(data_path, index=False, encoding='utf-8', sep=';')
        print(df)
        return True
