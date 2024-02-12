programa
{
	caracter opcao
	cadeia nomes[10]
	cadeia cpfs[10]
	inteiro dias[10]
	real despesas[10]
	inteiro indiceHospedes = 0

	funcao inicio()
	{
		faca
		{
			escreva("\nBem vindo ao Hotel\n\n")
			escreva("1 - Cadastrar Hospedes\n2 - Exibir Hospedes Cadastrados\n3 - Reservar Área de Lazer\n4 - Calcular Total a Pagar\n0 - Sair\n")
			escreva("Escolha uma opção: ")
			leia(opcao)

			escolha(opcao)
			{
				caso '1':
					cadastrar_hospede()
					pare
				caso '2':
					exibir_hospedes_cadastrados()
					pare
				caso '3':
					reservar_area_lazer()
					pare
				caso '4':
					calcular_total_pagar()
					pare
				caso '0':
					sair()
					pare
				caso contrario:
					escreva("\nOpção inválida. Por favor, tente novamente.\n")
			}
		}
		enquanto (opcao != '0')
	}

	funcao cadastrar_hospede()
	{
		se (indiceHospedes >= 10)
		{
			escreva("\nOs cadastros estão lotados!\n")
			retorne
		}

		faca
		{
			escreva("\nDigite o nome do hóspede: ")
			leia(nomes[indiceHospedes])
			escreva("Digite o CPF do hóspede: ")
			leia(cpfs[indiceHospedes])
			escreva("Digite a quantidade de dias que o hóspede ficará hospedado: ")
			leia(dias[indiceHospedes])

			escreva("\nConfirma os dados? (s/n): ")
			leia(opcao)
			
			se (opcao == 's' ou opcao == 'S')
			{
				despesas[indiceHospedes] = 0.0
				escreva("\nHóspede cadastrado com sucesso!\n")
				indiceHospedes++
				retorne
			}
			
			escreva("\nDados não confirmados. Iniciando novo cadastro...\n")
			
		}
		enquanto (verdadeiro)
		
	}

	funcao exibir_hospedes_cadastrados()
    {
        inteiro i = 0

        escreva("\nHóspedes cadastrados:\n")

        enquanto(i < indiceHospedes)
        {
            escreva("\nÍndice: ", i)
            escreva("\nNome: ", nomes[i])
            escreva("\nCPF: ", cpfs[i])
            escreva("\nDias hospedado: ", dias[i])
            escreva("\nDespesas: R$", despesas[i], "\n")

            i++
        }
    }

	funcao reservar_area_lazer()
    {
        inteiro indice

        exibir_hospedes_cadastrados()

        escreva("\nInforme o índice do hóspede que deseja reservar uma área de lazer: ")
        leia(indice)

        se (indice < 0 ou indice >= indiceHospedes)
        {
            escreva("\nÍndice inválido. Retornando ao menu...\n")
            retorne
        }

        escreva("\nSelecione a área de lazer desejada:\nA - Academia (R$20)\nS - Salão de Festas (R$50)\nR - Restaurante (R$35)\n")
        leia(opcao)

        escolha(opcao)
        {
            caso 'A':
                despesas[indice] += 20.0
                pare
            caso 'S':
                despesas[indice] += 50.0
                pare
            caso 'R':
                despesas[indice] += 35.0
                pare
            caso contrario:
                escreva("\nOpção inválida. Retornando ao menu...\n")
        }
    }

	funcao calcular_total_pagar()
    {
        inteiro indice

        exibir_hospedes_cadastrados()

        escreva("\nInforme o índice do hóspede para calcular o total a pagar: ")
        leia(indice)

        se (indice < 0 ou indice >= indiceHospedes)
        {
            escreva("\nÍndice inválido. Retornando ao menu...\n")
            retorne
        }

        real total = calcular_gastos(indice)

        escreva("\nO total a ser pago pelo hóspede ", nomes[indice], " é: R$", total, "\n")
    }

	funcao real calcular_gastos(inteiro indice)
    {
        real total = dias[indice] * 100.0 + despesas[indice]

        retorne total
    }

	funcao sair()
    {
        escreva("\nObrigado por usar nosso sistema. Até mais!\n")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 516; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */