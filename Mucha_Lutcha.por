programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	
		inteiro mutcha = g.carregar_imagem("mutcha.GIF")
		const real itemtatame = 961.40, itemluva = 159.99, itembandagem = 38.79, itemsaco = 175.00, itemprotetor = 84.15, itemcinturao = 219.00, itemcolchonete = 19.45, itemcorda = 27.77, itemhalteres = 949.00, itemwhey = 91.99, itembola = 59.99, itemcamisa = 299.99, itemchuteira = 179.99, itemmeiao = 29.99, itemcaneleira = 49.99
		caracter acss
		inteiro num,item, qttatame, qtluva, qtbandagem, qtsaco, qtprotetor, qtcinturao, qtcolchonete, qtcorda, qthalteres, qtwhey, qtbola, qtcamisa, qtchuteira, qtmeiao, qtcaneleira 			
		cadeia resp 		 	
		real TotalCarrinho, totaLucha = 0.00
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
			g.iniciar_modo_grafico(verdadeiro)
			g.definir_dimensoes_janela(480, 360)
			g.definir_titulo_janela("Loading...")
			g.definir_quadro_gif(mutcha,62)
			g.proximo_frame_gif(mutcha)
			g.desenhar_imagem(0,0, mutcha)
			g.renderizar()
			escreva("\t\t ...Aguarde enquanto carregamos as informações...")
			u.aguarde(1000)
			g.encerrar_modo_grafico()
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
	{		limpa()
			cadeia nome
          	inteiro senha = 123
          	escreva("\nOpa... Legal!\n")
          	escreva("Agora digite seu nome de usuário: ")
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
            		u.aguarde(0250)
            		escreva(".")
          }
	  			u.aguarde(0350)
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
				u.aguarde(2000)
				g.encerrar_modo_grafico()
       	 		escreva("\nBem-vindo(a), ", nome, ".\n\n")
		  		Util.aguarde(0500)
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
			escreva("    ████████████████████████████████████████████████████████████████████████████\n")
			escreva("    █*************************  Sistema Mucha lucha  **************************█\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █   1 - LUCHA     |][|  2 - MUSCULAÇÃO  |][| 3 - FUTEBOL  |][|  CARRINHO   █\n")
			escreva("    █                 |][|                  |][|              |][|             █\n")
			escreva("    █  Luva           |[]| Cinturão         |[]| Bola         |[]|   Vazio     █\n")
			escreva("    █  Tatame         |[]| Colchonete       |[]| Camisa       |[]|   Vazio     █\n")
			escreva("    █  Protetor Bucal |[]| Corda            |[]| Chuteira     |[]|   Vazio     █\n")
			escreva("    █  Saco de Boxe   |[]| Kit de Halteres  |[]| Meião        |[]|   Vazio     █\n")
			escreva("    █  Bandagem       |[]| Whey Protein     |[]| Caneleira    |[]|   Vazio     █\n")
			escreva("    █_________________|][|__________________|[]|______________|][|_____________█\n")
			escreva("    █                 |][|                  |][|              |][|             █\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █***********************  PARA SAIR PRESSIONE => 0  ***********************█\n")
			escreva("    ████████████████████████████████████████████████████████████████████████████\n\n\n")
			escreva("\t\tPara avançar, escolha uma das categorias acima:  ")
			escreva("\n\n\t\t\t\t\t\t\t\tCARRINHO: R$",totaLucha,"\t")
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
	funcao tela_logout()
	{
		limpa()
	  			escreva("\nDesconectando")
		para(init=1; init <4; init++)
		{
            		u.aguarde(0300)
            		escreva(".")
            		u.aguarde(0100)
		}
          limpa()
            		escreva("\nPara retornar a tela de loggin digite [1] ou [0] para encerrar o sistema:  ")
				leia(num)
		limpa()
		
		se(num == 0)
			{
				g.fechar_janela()
			}
		se(num == 1)
			{
				acesso()
			}
		
		enquanto(num != 1)
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
			escreva("    █  1 Tatame       |][|   2  Luva     |][|  3 Bandagem    |][|  4  Saco de Boxe  |][|  5 Protetor Bucal     █\n")
			escreva("    █                 |][|               |][|                |][|                   |][|                       █\n")
			escreva("    █                 |][|               |][|                |][|                   |][|                       █\n")
			escreva("    █   R$961,40      |][|   R$159,99    |][|    R$38,79     |][|      R$175,00     |][|       R$84,15         █\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █*************************************  PARA VOLTAR AO MENU => 0   ****************************************█\n")
			escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n\n\n")
			escreva("\t\t\t\tSe interessou nestes itens? \n\t\tDigite o respectivo número deste para adicionar em seu carrinho:  ")
			escreva("\t\tCARRINHO: R$",totaLucha,"\t")
			leia(item)
				se(item == 1)
					{
					limpa()
					escreva("\tTatame\n")
					escreva("Escolha a quantidade: \n")
					leia(qttatame)
					totaLucha = (itemtatame * qttatame) + totaLucha m.arredondar(totaLucha, 2)
					limpa()
					tela_lucha()
					}
				senao se(item == 2)
					{
					limpa()
					escreva("\tLuva\n")
					escreva("Escolha a quantidade: ")
					leia(qtluva)
					totaLucha = (itemluva * qtluva) + totaLucha m.arredondar(totaLucha, 2)
					limpa()
					tela_lucha()
					}
				senao se(item == 3)
					{
					limpa()
					escreva("\tBandagem\n")
					escreva("Escolha a quantidade: ")
					leia(qtbandagem)
					totaLucha = (itembandagem * qtbandagem) + totaLucha  m.arredondar(totaLucha, 2)
					limpa()
					tela_lucha()
					}
				senao se(item == 4)
					{
					limpa()
					escreva("\tSaco de Boxe\n")
					escreva("Escolha a quantidade: ")
					leia(qtsaco)
					totaLucha = (itemsaco * qtsaco) + totaLucha  m.arredondar(totaLucha, 2)
					limpa()
					tela_lucha()
					}
				senao se(item == 5)
					{
					limpa()
					escreva("\tProtetor Bucal\n")
					escreva("Escolha a quantidade: ")
					leia(qtprotetor)
					totaLucha = (itemprotetor * qtprotetor) + totaLucha m.arredondar(totaLucha, 2)
					limpa()
					tela_lucha()
					}
				se(item == 0)
					{
					limpa()
					tela_menu()
					}	
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
			escreva("    █    R$219,00     |][|   R$19,45     |][|    R$27,77     |][|     R$949,00      |][|       R$91,99         █\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █*************************************  PARA VOLTAR AO MENU => 0  *****************************************█\n")
			escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n\n\n")
			escreva("\t\t\t\tSe interessou nestes itens? \n\t\tDigite o respectivo número deste para adicionar em seu carrinho:  ")
			escreva("\t\tCARRINHO: R$",totaLucha,"\t")
				leia(item)
				se(item == 1)
					{
					limpa()
					escreva("\tCinturão\n")
					escreva("Escolha a quantidade: \n")
					leia(qtcinturao)
					totaLucha = (itemcinturao * qtcinturao) + totaLucha m.arredondar(totaLucha, 2)
					limpa()
					tela_musc()
					}
				senao se(item == 2)
					{
					limpa()
					escreva("\tColchonete\n")
					escreva("Escolha a quantidade: ")
					leia(qtcolchonete)
					totaLucha = (itemcolchonete * qtcolchonete) + totaLucha m.arredondar(totaLucha, 2)
					limpa()
					tela_musc()
					}
				senao se(item == 3)
					{
					limpa()
					escreva("\tCorda\n")
					escreva("Esccolha a quantidade: ")
					leia(qtcorda)
					totaLucha = (itemcorda * qtcorda) + totaLucha m.arredondar(totaLucha, 2)
					limpa()
					tela_musc()
					}
				senao se(item == 4)
					{
					limpa()
					escreva("\tKit de Halteres\n")
					escreva("Esccolha a quantidade: ")
					leia(qthalteres)
					totaLucha = (itemhalteres * qthalteres) + totaLucha
					limpa()
					tela_musc()
					}
				senao se(item == 5)
					{
					limpa()
					escreva("\tWhey Protein\n")
					escreva("Esccolha a quantidade: ")
					leia(qtwhey)
					totaLucha = (itemwhey * qtwhey) + totaLucha m.arredondar(totaLucha, 2)
					limpa()
					tela_musc()
					}
				se(item == 0)
					{
					limpa()
					tela_menu()
					}	
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
			escreva("    █     R$59,99     |][|   R$299,99    |][|    R$179,99    |][|      R$29,99      |][|      R$49,99          █\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █*************************************  PARA VOLTAR AO MENU => 0  *****************************************█\n")
			escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████████████\n\n\n")
			escreva("\t\t\t\tSe interessou nestes itens? \n\t\tDigite o respectivo número deste para adicionar em seu carrinho:  ")
			escreva("\t\tCARRINHO: R$",totaLucha,"\t")
			leia(item)
				se(item == 1)
					{
					limpa()
					escreva("\tBola\n")
					escreva("Escolha a quantidade: \n")
					leia(qtbola)
					totaLucha = (itembola * qtbola) + totaLucha m.arredondar(totaLucha, 2)
					limpa()
					tela_fut()
					}
				senao se(item == 2)
					{
					limpa()
					escreva("\tCamisa\n")
					escreva("Escolha a quantidade: ")
					leia(qtcamisa)
					totaLucha = (itemcamisa * qtcamisa) + totaLucha m.arredondar(totaLucha, 2)
					limpa()
					tela_fut()
					}
				senao se(item == 3)
					{
					limpa()
					escreva("\tChuteira\n")
					escreva("Esccolha a quantidade: ")
					leia(qtchuteira)
					totaLucha = (itemchuteira * qtchuteira) + totaLucha m.arredondar(totaLucha, 2)
					limpa()
					tela_fut()
					}
				senao se(item == 4)
					{
					limpa()
					escreva("\tMeião\n")
					escreva("Esccolha a quantidade: ")
					leia(qtmeiao)
					totaLucha = (itemmeiao * qtmeiao) + totaLucha m.arredondar(totaLucha, 2)
					limpa()
					tela_fut()
					}
				senao se(item == 5)
					{
					limpa()
					escreva("\tCaneleira\n")
					escreva("Esccolha a quantidade: ")
					leia(qtcaneleira)
					totaLucha = (itemcaneleira * qtcaneleira) + totaLucha m.arredondar(totaLucha, 2)
					limpa()
					tela_fut()
					}
				se(item == 0)
					{
					limpa()
					tela_menu()
					}	
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
 * @POSICAO-CURSOR = 743; 
 * @DOBRAMENTO-CODIGO = [12, 31, 44, 22, 63, 54, 77, 89, 134, 229, 324];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */