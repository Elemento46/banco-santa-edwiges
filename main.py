import consultas

def exibir_resultados(titulo, dados):
    print(f"\n{'='*10} {titulo} {'='*10}")
    for item in dados:
        print(item)

if __name__ == "__main__":
    exibir_resultados("Clientes Femininos", consultas.clientes_femininos())

    exibir_resultados(
        "Produtos com quantidade < 30 e preco > 250",
        consultas.produtos_baixa_quantidade_e_preco()
    )

    exibir_resultados(
        "Clientes com codigo < 666",
        consultas.clientes_codigo_menor_666()
    )

    exibir_resultados(
        "Produtos cujo nome começa com 'Mes'",
        consultas.produtos_nome_mes()
    )

    exibir_resultados(
        "Clientes Femininos RJ e ES",
        consultas.clientes_femininos_rj_es()
    )

    total = consultas.contar_produtos()
    print(f"\nTotal de produtos na tabela: {total}")
