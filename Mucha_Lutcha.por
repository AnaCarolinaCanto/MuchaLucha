programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util	--> u
		 	inteiro mutcha = g.carregar_imagem("mutcha.gif")
		 	cadeia resp 
		 	inteiro num
		 	caracter acss	
	
	funcao inicio()
	{
			logo()
			acesso()
			menu()
			telas()	
			
	}
	funcao logo()
	{			
			escreva("  ███    ███ ██    ██  ██████ ██   ██  █████      ██      ██    ██  ██████ ██   ██  █████  \n")
			escreva("  ████  ████ ██    ██ ██      ██   ██ ██   ██     ██      ██    ██ ██      ██   ██ ██   ██ \n")
			escreva("  ██ ████ ██ ██    ██ ██      ███████ ███████     ██      ██    ██ ██      ███████ ███████ \n")
			escreva("  ██  ██  ██ ██    ██ ██      ██   ██ ██   ██     ██      ██    ██ ██      ██   ██ ██   ██ \n")
			escreva("  ██      ██  ██████   ██████ ██   ██ ██   ██     ███████  ██████   ██████ ██   ██ ██   ██ \n\n\n")    
			escreva("\t\tBem-vindo! Gostaria de ter acesso aos nossos produtos? ")
			leia(resp)  
		se(resp == "sim" ou resp == "Sim")
		{	
			g.iniciar_modo_grafico(verdadeiro)
			g.definir_dimensoes_janela(480, 360)
			g.desenhar_imagem(0,0, mutcha)
			g.definir_titulo_janela("Loading...")
			g.renderizar()
			escreva("\t\t ...Aguarde enquanto carregamos as informações...")
			u.aguarde(2000)
			g.fechar_janela()
			
		}
		senao
		{
			limpa()
			escreva("\t\t\tPoxa, que pena. :( \n\n\n\n\n")   
			logo()
		}                                                                                                        
	}
	
	funcao acesso()
	{
			limpa()
			cadeia nome
          	inteiro senha = 123
          	escreva("Abaixo, digite seu login e senha\n")
          	escreva("Digite seu nome de usuário: ")
          	leia(nome)
          	escreva("Digite a sua senha: ")
          	leia(senha) 
	    
      	enquanto(nome != "Leonardo" e nome != "Matheus" e nome != "Douglas" e nome != "Rodrigo" e nome != "Thais" e nome != "Aninha" ou senha != 123)
      	{
               limpa()
               escreva("Acesso negado!!! \n")
               escreva("\nDigite seu nome de usuário correto: ")
               leia(nome)
               escreva("Digite a sua senha: ")
               leia(senha)
	      	limpa()
	  	}
       	 	escreva("\nBem-vindo(a), ", nome, ".\n\n")
		  	Util.aguarde(1000)
       	 	limpa()
	}
 	funcao menu()
	{
			escreva("    ████████████████████████████████████████████████████████████████████████████\n")
			escreva("    █*************************** Sistema Mucha lucha **************************█\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █   1 - LUCHA     |][|  2 - MUSCULAÇÃO  |][| 3 - FUTEBOL  |][|  CARRINHO   █\n")
			escreva("    █                 |][|                  |][|              |][|             █\n")
			escreva("    █  Luva           |][| Cinturão         |][| Bola         |][|             █\n")
			escreva("    █  Tatame         |][| Colchonete       |][| Camisa       |][|             █\n")
			escreva("    █  Protetor Bucal |][| Corda            |][| Chuteira     |][|             █\n")
			escreva("    █  Saco de Boxe   |][| Kit de Halteres  |][| Meião        |][|             █\n")
			escreva("    █  Bandagem       |][| Whey Protein     |][| Caneleira    |][|             █\n")
			escreva("    █                 |][|                  |][|              |][|             █\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █***********************  PARA SAIR PRESSIONE => 0  ***********************█\n")
			escreva("    ████████████████████████████████████████████████████████████████████████████\n\n\n")
			leia(num)
			limpa()
	}		
	funcao telas()
	{
			cadeia lucha[5] = {"1","2","3","4","5"}
			escreva("Qual desses itens você se interessou? ")
			leia(lucha)
			escolha(num)
		{	
			caso 1: 
			escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n")
			escreva("    █                                                                                                          █\n")
			escreva("    █************************************************ LUCHA ***************************************************█\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █   1 Tatame      |][|   2  Luva     |][|  3 Bandagem    |][|  4  Saco de Boxe  |][|  5 Protetor Bucal     █\n")
			escreva("    █                 |][|               |][|                |][|                   |][|                       █\n")
			escreva("    █                 |][|               |][|                |][|                   |][|                       █\n")
			escreva("    █        R$329,00 |][|   R$329,00    |][|    R$329,00    |][|      R$329,00     |][|       R$329,00        █\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █*************************************  PARA SAIR PRESSIONE => 0  *****************************************█\n")
			escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n\n\n")
			escreva("Digite um item: ")
			limpa()
			caso 2: 
			escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n")
			escreva("    █                                                                                                          █\n")
			escreva("    █******************************************* MUSCULAÇÃO ***************************************************█\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █  1 Cinturão     |][| 2 Colchonete  |][| 3 Corda        |][| 4 Kit de Halteres |][|  5 Whey Protein       █\n")
			escreva("    █                 |][|               |][|                |][|                   |][|                       █\n")
			escreva("    █                 |][|               |][|                |][|                   |][|                       █\n")
			escreva("    █    R$329,00     |][|   R$329,00    |][|    R$329,00    |][|     R$329,00      |][|       R$329,00        █\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █*************************************  PARA SAIR PRESSIONE => 0  *****************************************█\n")
			escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n\n\n")
			leia(num)
			limpa()
			caso 3:
			escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n")
			escreva("    █                                                                                                          █\n")
			escreva("    █******************************************* FUTEBOL ******************************************************█\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █  1 Bola         |][| 2 Camisa      |][| 3 Chuteira     |][| 4 Meião           |][|  5 Caneleira          █\n")
			escreva("    █                 |][|               |][|                |][|                   |][|                       █\n")
			escreva("    █                 |][|               |][|                |][|                   |][|                       █\n")
			escreva("    █     R$329,00    |][|   R$329,00    |][|    R$329,00    |][|     R$329,00      |][|      R$329,00        █\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █*************************************  PARA SAIR PRESSIONE => 0  *****************************************█\n")
			escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n\n\n")
			leia(num)
			limpa()
			caso 4:
			menu()
		} 
	}	
			
	
}




/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7757; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */