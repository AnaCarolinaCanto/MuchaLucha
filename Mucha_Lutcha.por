programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util	--> u
		 		inteiro mutcha = g.carregar_imagem("mutcha.GIF")
		 		inteiro num, init
		 		cadeia resp 
		 		caracter acss	
	funcao inicio()
	{
				logo()
				acesso()
				tela_menu()
				tela_not_found()
				tela_lucha()
				tela_musc()
				tela_fut()
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
				/*g.iniciar_modo_grafico(verdadeiro)
				g.definir_dimensoes_janela(480, 360)
				g.definir_titulo_janela("Loading...")
				g.definir_quadro_gif(mutcha,62)
				g.proximo_frame_gif(mutcha)
				g.desenhar_imagem(0,0, mutcha)
				g.renderizar()
				escreva("\t\t ...Aguarde enquanto carregamos as informações...")
				u.aguarde(1000)
				g.encerrar_modo_grafico()*/
				escreva("\n \t\t\t\t\tCarregando")
			para(init=1; init <4; init++)
			{
            		u.aguarde(0400)
            		escreva(".")
           	}
				u.aguarde(0500)
		}
		senao
		{
				limpa()
				u.aguarde(0500)
				escreva("\t\t\tPoxa, que pena. :( \n\n\n\n\n")
				u.aguarde(1000)   
				limpa()
				logo()
		}                                                                                                        
	}
	
	funcao acesso()
	{			limpa()
				cadeia nome
          		inteiro senha = 123
          		escreva("\nOpa... Legal!\n")
          		escreva("\nAgora digite seu nome de usuário: ")
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
	      		u.aguarde(1000)
	      }
	  		
	  			limpa()
	  			escreva("\nAguarde enquanto carregamos as informações")
		para(init=1; init <4; init++)
		{
            		u.aguarde(0300)
            		escreva(".")
          }
	  			u.aguarde(0300)
	  			g.iniciar_modo_grafico(verdadeiro)
				g.definir_dimensoes_janela(480, 360)
				g.definir_titulo_janela("Loading...")
				g.definir_quadro_gif(mutcha,62)
				g.proximo_frame_gif(mutcha)
				g.desenhar_imagem(0,0, mutcha)
				g.renderizar()
			limpa()
				/*escreva("\nAguarde enquanto carregamos as informações")
				para(init=1; init <4; init++)
				{
            		u.aguarde(0400)
            		escreva(".")
         			 }*/
				u.aguarde(1000)
				g.encerrar_modo_grafico()
       	 		escreva("\nBem-vindo(a), ", nome, ".\n\n")
		  		Util.aguarde(1000)
       	 	limpa()
	}
 	funcao tela_not_found()
 	{
				escreva("		▓██▓███   ▄▄▄        ▄████ ▓█████     ███▄    █  ▒█████  ▄▄▄█████▓     █████▒▒█████   █    ██  ███▄    █ ▓█████▄  \n")  
				escreva("		▓██░  ██▒▒████▄     ██▒ ▀█▒▓█   ▀     ██ ▀█   █ ▒██▒  ██▒▓  ██▒ ▓▒   ▓██   ▒▒██▒  ██▒ ██  ▓██▒ ██ ▀█   █ ▒██▀ ██▌ \n")
				escreva("		▓██░ ██▓▒▒██  ▀█▄  ▒██░▄▄▄░▒███      ▓██  ▀█ ██▒▒██░  ██▒▒ ▓██░ ▒░   ▒████ ░▒██░  ██▒▓██  ▒██░▓██  ▀█ ██▒░██   █▌ \n")
				escreva("		▒██▄█▓▒ ▒░██▄▄▄▄██ ░▓█  ██▓▒▓█  ▄    ▓██▒  ▐▌██▒▒██   ██░░ ▓██▓ ░    ░▓█▒  ░▒██   ██░▓▓█  ░██░▓██▒  ▐▌██▒░▓█▄   ▌ \n")   
				escreva("		▒██▒ ░  ░ ▓█   ▓██▒░▒▓███▀▒░▒████▒   ▒██░   ▓██░░ ████▓▒░  ▒██▒ ░    ░▒█░   ░ ████▓▒░▒▒█████▓ ▒██░   ▓██░░▒████▓  \n")  
				escreva("		▒▓▒░ ░  ░ ▒▒   ▓▒█░ ░▒   ▒ ░░ ▒░ ░   ░ ▒░   ▒ ▒ ░ ▒░▒░▒░   ▒ ░░       ▒ ░   ░ ▒░▒░▒░ ░▒▓▒ ▒ ▒ ░ ▒░   ▒ ▒  ▒▒▓  ▒  \n")  
				escreva("		░▒ ░       ▒   ▒▒ ░  ░   ░  ░ ░  ░   ░ ░░   ░ ▒░  ░ ▒ ▒░     ░        ░       ░ ▒ ▒░ ░░▒░ ░ ░ ░ ░░   ░ ▒░ ░ ▒  ▒  \n")  
				escreva("		░░         ░   ▒   ░ ░   ░    ░         ░   ░ ░ ░ ░ ░ ▒    ░          ░ ░   ░ ░ ░ ▒   ░░░ ░ ░    ░   ░ ░  ░ ░  ░  \n") 
				escreva("	  	░░	      ░   ░     ░        ░         ░     ░ ░                     ░ ░     ░             ░    ░   ░        \n\n\n")
 	}
 	funcao tela_menu()
	{
				escreva("   	████████████████████████████████████████████████████████████████████████████\n")
				escreva("    	█*************************  Sistema Mucha lucha  **************************█\n")
				escreva("    	█══════════════════════════════════════════════════════════════════════════█\n")
				escreva("    	█   1 - LUCHA     |][|  2 - MUSCULAÇÃO  |][| 3 - FUTEBOL  |][|  CARRINHO   █\n")
				escreva("    	█                 |][|                  |][|              |][|             █\n")
				escreva("    	█  Luva           |[]| Cinturão         |[]| Bola         |[]|   Vazio     █\n")
				escreva("    	█  Tatame         |[]| Colchonete       |[]| Camisa       |[]|   Vazio     █\n")
				escreva("    	█  Protetor Bucal |[]| Corda            |[]| Chuteira     |[]|   Vazio     █\n")
				escreva("    	█  Saco de Boxe   |[]| Kit de Halteres  |[]| Meião        |[]|   Vazio     █\n")
				escreva("    	█  Bandagem       |[]| Whey Protein     |[]| Caneleira    |[]|   Vazio     █\n")
				escreva("    	█_________________|][|__________________|[]|______________|][|_____________█\n")
				escreva("    	█                 |][|                  |][|              |][|             █\n")
				escreva("    	█══════════════════════════════════════════════════════════════════════════█\n")
				escreva("    	█***********************  PARA SAIR PRESSIONE => 0  ***********************█\n")
				escreva("    	████████████████████████████████████████████████████████████████████████████\n\n\n")
				escreva("\t\tPara avançar, escolha uma das categorias acima:  ")
				leia(num)
			limpa()
		se(num == 0)
			{
				logo()
			}
		se(num == 1)
			{
				tela_lucha()
			}
		se(num == 2)
			{
				tela_musc()
			}
		se(num == 3)
			{
				tela_fut()
			}
		enquanto(num != 0 e num != 1 e num != 2 ou num !=3)
			{
				tela_not_found()
				u.aguarde(2000)
				limpa()
				tela_menu()
			}
	}		
	
	funcao tela_lucha()
	{
				escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n")
				escreva("    █                                                                                                          █\n")
				escreva("    █************************************************ LUCHA ***************************************************█\n")
				escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
				escreva("    █   1 Tatame      |][|   2  Luva     |][|  3 Bandagem    |][|  4  Saco de Boxe  |][|  5 Protetor Bucal     █\n")
				escreva("    █                 |][|               |][|                |][|                   |][|                       █\n")
				escreva("    █                 |][|               |][|                |][|                   |][|                       █\n")
				escreva("    █   R$329,00      |][|   R$329,00    |][|    R$329,00    |][|      R$329,00     |][|       R$329,00        █\n")
				escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
				escreva("    █*************************************  PARA VOLTAR AO MENU => 0  *****************************************█\n")
				escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n\n\n")
				escreva("\t\t\t\t\tSe interessou nestes itens? \n\t\t\tDigite o respectivo número deste para adicionar em seu carrinho:  ")
				leia(num)
			limpa()
		se(num == 0)
			{
				tela_menu()
			}
		se(num == 1)
			{
				tela_lucha()
			}
		se(num == 2)
			{
				tela_musc()
			}
		se(num == 3)
			{
				tela_fut()
			}
		enquanto(num != 0 e num != 1 e num != 2 ou num !=3)
			{
				
				tela_not_found()
				u.aguarde(2000)
				limpa()
				tela_menu()
			}
	}
	funcao tela_musc()
	{
				escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n")
				escreva("    █                                                                                                          █\n")
				escreva("    █******************************************* MUSCULAÇÃO ***************************************************█\n")
				escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
				escreva("    █  1 Cinturão     |][| 2 Colchonete  |][| 3 Corda        |][| 4 Kit de Halteres |][|  5 Whey Protein       █\n")
				escreva("    █                 |][|               |][|                |][|                   |][|                       █\n")
				escreva("    █                 |][|               |][|                |][|                   |][|                       █\n")
				escreva("    █    R$329,00     |][|   R$329,00    |][|    R$329,00    |][|     R$329,00      |][|       R$329,00        █\n")
				escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
				escreva("    █*************************************  PARA VOLTAR AO MENU => 0  *****************************************█\n")
				escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n\n\n")
				escreva("\t\t\t\tSe interessou nestes itens? \n\t\tDigite o respectivo número deste para adicionar em seu carrinho:  ")
				leia(num)
			limpa()
		se(num == 0)
			{
				tela_menu()
			}
		se(num == 1)
			{
				tela_lucha()
			}
		se(num == 2)
			{
				tela_musc()
			}
		se(num == 3)
			{
				tela_fut()
			}
		enquanto(num != 0 e num != 1 e num != 2 ou num !=3)
			{
				tela_not_found()
				u.aguarde(2000)
				limpa()
				tela_menu()
			}
	}
	funcao tela_fut()
	{
				escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n")
				escreva("    █                                                                                                          █\n")
				escreva("    █******************************************* FUTEBOL ******************************************************█\n")
				escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
				escreva("    █      1 Bola     |][|   2 Camisa    |][|   3 Chuteira   |][|      4 Meião      |][|     5 Caneleira       █\n")
				escreva("    █                 |][|               |][|                |][|                   |][|                       █\n")
				escreva("    █     R$329,00    |][|   R$329,00    |][|    R$329,00    |][|      R$329,00     |][|      R$329,00         █\n")
				escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
				escreva("    █*************************************  PARA VOLTAR AO MENU => 0  *****************************************█\n")
				escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n\n\n")
				escreva("\t\t\t\tSe interessou nestes itens? \n\t\tDigite o respectivo número deste para adicionar em seu carrinho:  ")
				leia(num)
			limpa()
		se(num == 0)
			{
				tela_menu()
			}
		se(num == 1)
			{
				tela_lucha()
			}
		se(num == 2)
			{
				tela_musc()
			}
		se(num == 3)
			{
				tela_fut()
			}
		enquanto(num != 0 e num != 1 e num != 2 ou num !=3)
			{
				tela_not_found()
				u.aguarde(2000)
				limpa()
				tela_menu()
			}
	}
 
}	
			
	




/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1255; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */