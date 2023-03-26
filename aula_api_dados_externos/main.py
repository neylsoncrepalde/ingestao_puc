from metodos import extrai_api, json_to_csv

if __name__ == "__main__":
    res = extrai_api()
    print(res)

    res2 = json_to_csv()
    print(res2)