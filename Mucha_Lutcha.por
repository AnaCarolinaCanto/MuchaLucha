programa
{
	
	inclua biblioteca Matematica --> m
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
  
		//VALOR FIXO PARA OS PRODUTOS ↓
		const real itemtatame = 961.40, itemluva = 159.99, itembandagem = 38.79, itemsaco = 175.00, itemprotetor = 84.15, 
				 itemcinturao = 219.00, itemcolchonete = 19.45, itemcorda = 27.77, itemhalteres = 949.00, itemwhey = 91.99,
				 itembola = 59.99, itemcamisa = 299.99, itemchuteira = 179.99, itemmeiao = 29.99, itemcaneleira = 49.99
		//QUANTIDADE ITENS ↓
		inteiro esttatame = 15, estluva = 10, estbandagem = 5, estsaco = 25, estprotetor =20, //estoque lucha
			   estcinturao = 45, estcolchonete = 50, estcorda = 34, esthalteres = 30, estwhey = 42, //estoque musculação
			   estbola = 32, estcamisa = 11, estchuteira = 13, estmeiao = 22, estcaneleira = 24, //estoque futebol 
			   qttatame, qtluva, qtbandagem, qtsaco, qtprotetor, //multiplicadores
			   qtcinturao, qtcolchonete, qtcorda, qthalteres, qtwhey,//multiplicadores
			   qtbola, qtcamisa, qtchuteira, qtmeiao, qtcaneleira,//multiplicadores
			   init			
		//CARREGAR GIF ↓
		inteiro mutcha = g.carregar_imagem("mutcha.GIF")
		//VARIÁVEL DO CARRINHO ↓
		real TotalCarrinho, totaLucha = 0.00
		//LOGIN ADMIN ↓
		cadeia resp, loginglobal, item 		 	
		//LOGIN USÁRIO COMUM ↓
		caracter acss, num
	//ORDEM DAS FUNÇÕES ↓
	funcao inicio()
	{			
				//logo()
				//cadastro()
				tela_menu()
				tela_not_found()
				tela_lucha()
				tela_musc()
				tela_fut()
	}
	//TELA LOGO ↓
	funcao logo()
	{			
				escreva("  ███    ███ ██    ██  ██████ ██   ██  █████      ██      ██    ██  ██████ ██   ██  ██████\n")
			u.aguarde(70)
				escreva("  ████  ████ ██    ██ ██      ██   ██ ██   ██     ██      ██    ██ ██      ██   ██ ██   ██\n")
			u.aguarde(60)
				escreva("  ██ ████ ██ ██    ██ ██      ███████ ███████     ██      ██    ██ ██      ███████ ███████\n")
			u.aguarde(50)
				escreva("  ██  ██  ██ ██    ██ ██      ██   ██ ██   ██     ██      ██    ██ ██      ██   ██ ██   ██\n")
			u.aguarde(40)
				escreva("  ██      ██  ██████   ██████ ██   ██ ██   ██     ███████  ██████   ██████ ██   ██ ██   ██\n\n\n")
			u.aguarde(30)      
				escreva("\t\tBem-vindo! Gostaria de ter acesso aos nossos produtos? ")
				leia(resp)  
		se(resp == "sim" ou resp == "Sim")
		{
				//CARREGANDO ANIMADO ↓
				escreva("\n \t\t\t\t\tCarregando")
			para(init=1; init <4; init++)					
			{											
            		u.aguarde(0200)
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
				//escreva("\t\t ...Aguarde enquanto carregamos as informações...")
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
			tela_logout()
		}                                                                                                        
	}	
	//TELA LOGIN E SENHA ↓
	funcao cadastro()
	{		limpa()
				logico confere = falso
				cadeia acesso, senha, tentar
		const inteiro total = 7
				//LOGINS ↓
				cadeia login[total]
				login[0] = "Rodrigo"
				login[1] = "Matheus"
				login[2] = "Leo"
				login[3] = "Ana"
				login[4] = "Thais"
				login[5] = "Douglas"
				login[6] = "Admin"
				// SENHAS ↓
				cadeia codigo[total]
				codigo[0] = "123"
				codigo[1] = "1234"
				codigo[2] = "12345"
				codigo[3] = "123456"
				codigo[4] = "1234567"
				codigo[5] = "87654321"				
				codigo[6] = "Admin"
		faca{		
				escreva("\nDigite seu nome de usuário: ")
				leia(acesso)
				escreva("Digite a sua senha: ")
				leia(senha)
			limpa()
			
		para(inteiro i = 0 ; i < total ; i++)
			se(acesso == login[i]) 
				se(senha == codigo[i])
					confere = verdadeiro
				
		se(nao confere){
			escreva("Login ou senha inválidos\n")
				escreva("Tentar novamente? S ou N: ")	
					leia(tentar)
				
		se(tentar != "S"){
				tela_logout()
							}
						}
			} 
		enquanto(nao confere)
			se(confere){
				loginglobal = acesso
					escreva("\t \t \t     Bem-vindo(a), ", acesso, ".\n\n")
					tela_menu()
							}
			limpa()
	  			escreva("\nAguarde enquanto carregamos as informações")
		//ANIMAÇÃO TRÊS PONTINHOS CARREGANDO... ↓
		para(init=1; init <4; init++)
		{
            		u.aguarde(0250)
            		escreva(".")
          }
          //ANIMAÇÃO PRA ABRIR GIF DE LOADING.. ↓
	  			u.aguarde(0350)
	  			g.iniciar_modo_grafico(verdadeiro)
				g.definir_dimensoes_janela(480, 360)
				g.definir_titulo_janela("Loading...")
				g.definir_quadro_gif(mutcha,62)
				g.proximo_frame_gif(mutcha)
				g.desenhar_imagem(0,0, mutcha)
				g.renderizar()
			limpa()
				u.aguarde(2000)
				g.encerrar_modo_grafico()
       	 		escreva("\nBem-vindo(a), ", acesso, ".\n\n")
		  		Util.aguarde(0500)
		  		//limpa()
       	 		//escreva("\t \t \t Bem-vindo(a), ", acesso, ".\n\n")
	}	
	//TELA DE NÃO ENCONTRADA ↓
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
 	//TELA MENU ↓
 	funcao tela_menu()
	{		escreva("    ███████████████████████████████████████████████████████████████████████\n")
			escreva("    █***********************  Sistema Mucha Lucha  ***********************█\n")
			escreva("    █═════════════════════════════════════════════════════════════════════█\n")
			escreva("    █    [1] LUCHA     ||  [2] MUSCULAÇÃO  || [3] FUTEBOL  ||             █\n")
			escreva("    █                  ||                  ||              ||             █\n")
			escreva("    █   Luva           || Cinturão         || Bola         ||             █\n")
			escreva("    █   Tatame         || Colchonete       || Camisa       ||             █\n")
			escreva("    █   Protetor Bucal || Corda            || Chuteira     ||             █\n")
			escreva("    █   Saco de Boxe   || Kit de Halteres  || Meião        ||             █\n")
			escreva("    █   Bandagem       || Whey Protein     || Caneleira    ||[8] CARRINHO █\n")
			escreva("    █__________________||__________________||______________||_____________█\n")
			escreva("    █                  ||                  ||              ||             █\n")
			escreva("    █═════════════════════════════════════════════════════════════════════█\n")
			escreva("    █                        PARA SAIR PRESSIONE [0]                      █\n")
			escreva("    █                      PARA FINALIZAR A COMPRA [8]                    █\n")
			escreva("    ███████████████████████████████████████████████████████████████████████\n")
			escreva("\t\tEscolha uma categoria ou uma das opções acima")
			escreva("\n\n\t\t\t\t\t\t\t CARRINHO R$:",m.arredondar(totaLucha, 2),"\n\t\t\t\t\t\t\tDigite uma opção: ")
			leia(num)
			limpa()
		se(num == '0')
			{
				logo()
			}
		se(num == '1')
			{
				tela_lucha()
			}
		se(num == '2')
			{
				tela_musc()
			}
		se(num == '3')
			{
				tela_fut()
			}
		se(num == '8')
			{
				tela_de_confirmacao()
			}
		enquanto(num != '0' e num != '1' e num != '2' ou num !='3')
			{
				tela_not_found()
				u.aguarde(2000)
				limpa()
				tela_menu()
			}
		enquanto(num !='8')
			{
				u.aguarde(2000)
				limpa()
				tela_de_confirmacao()
			}
	}
	//TELA DESCONEXÃO ↓		
	funcao tela_logout()
	{
		limpa()
	  			escreva("\t\t\t Desconectando")
		para(init=1; init <4; init++)/* ajustar*/
		{
            		u.aguarde(0200)
            		escreva(".")
            		u.aguarde(0100)
		}
          limpa()
            		escreva("\nPara retornar a tela login [1] ou para encerrar o sistema [0].\nDigite uma das opções acima:  ")
				leia(num)
		limpa()
		se(num == '0')
			{
				g.iniciar_modo_grafico(verdadeiro)
		          g.definir_dimensoes_janela(480, 360)
		          g.definir_titulo_janela("Loading...")
		          g.definir_quadro_gif(mutcha,62)
		          g.proximo_frame_gif(mutcha)
		          g.desenhar_imagem(0,0, mutcha)
		          g.renderizar()
		          escreva("\t\t ...Até logo...\n")
		          u.aguarde(1000)
		          g.fechar_janela()
				
			}
		se(num == '1')
			{
				cadastro()
			}
		enquanto(num != '1')
			{
				tela_not_found()
				u.aguarde(2000)
				limpa()
				tela_menu()
			}
		}
	//CATEGORIA LUTA ↓		
	funcao tela_lucha()
	{		 	
			escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████\n")
			escreva("    █                                                                                                  █\n")
			escreva("    █********************************************* LUCHA **********************************************█\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █  [1] Tatame     ||   [2] Luva    || [3] Bandagem   || [4] Saco de Boxe  || [5] Protetor Bucal    █\n")
			escreva("    █                 ||               ||                ||                   ||                       █\n")
			escreva("    █                 ||               ||                ||                   ||                       █\n")
			escreva("    █   R$961,40      ||   R$159,99    ||    R$38,79     ||      R$175,00     ||       R$84,15         █\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █                                     PARA VOLTAR AO MENU [0]                                      █\n")
			escreva("    █                                   PARA FINALIZAR A COMPRA [8]                                    █\n")
			escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████\n")
			escreva("\t\t\t\t        Se interessou nestes itens? \n\n\t\t                 ↑ Digite um Item ou uma das Opções acima ↑\n")
			escreva("\n\t\t\t\t\t\t\t                             CARRINHO R$:",m.arredondar(totaLucha, 2),"\n\t\t\t\t\t\t\t                            Digite uma opção: ")			leia(item)
			se(item == "1")
					{
					limpa()
					escreva("\tTatame ",esttatame," - unidades\n")
					escreva("Tatame composto com quatro placas,\n")
					escreva("com área total de 9.1m² e espessura de 40mm.\n")
					escreva("Escolha a quantidade: \n")
					leia(qttatame)
					totaLucha = (itemtatame * qttatame) + totaLucha 
					esttatame = esttatame - qttatame
					limpa()
					tela_lucha()
					}
			senao se(item == "2")
					{
					limpa()
					escreva("\tLuva ",estluva," - unidades\n")
					escreva("Luva confeccionada em material resistente,\n")
					escreva("palmas alcochoadas para absorção de impacto\n")
                         escreva("e proteção para dedos e punho.\n")
					escreva("Escolha a quantidade: ")
					leia(qtluva)
					totaLucha = (itemluva * qtluva) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estluva = estluva - qtluva
					limpa()
					tela_lucha()
					}
			senao se(item == "3")
					{
					limpa()
					escreva("\tBandagem ",estbandagem," - unidades\n")
					escreva("Bandagem desenvolvida para evitar lesões no punho.\n")
                         escreva("Fabricada em 60% poliamida e 40% poliéster.\n")
					escreva("Escolha a quantidade: ")
					leia(qtbandagem)
					totaLucha = (itembandagem * qtbandagem) + totaLucha  m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estbandagem = estbandagem - qtbandagem
					limpa()
					tela_lucha()
					}
			senao se(item == "4")
					{
					limpa()
					escreva("\tSaco de Boxe ",estsaco," - unidades\n")
					escreva("Saco de boxe com dimensões de 40 cm de altura, 50 cm de largura e 80 cm comprimento.\n")
					escreva("Escolha a quantidade: ")
					leia(qtsaco)
					totaLucha = (itemsaco * qtsaco) + totaLucha  m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estsaco = estsaco - qtsaco
					limpa()
					tela_lucha()
					}
			senao se(item == "5")
					{
					limpa()
					escreva("\tProtetor Bucal ",estprotetor," - unidades\n")
					escreva("Protetor bucal em E.V.A não tóxico moldavél, indicado para praticas de artes marciais.\n")
					escreva("Escolha a quantidade: ")
					leia(qtprotetor)
					totaLucha = (itemprotetor * qtprotetor) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estprotetor = estprotetor - qtprotetor
					limpa()
					tela_lucha()
					}
			se(item == "0")
					{
					limpa()
					tela_menu()
					}
			se(item == "8")
					{
				tela_de_confirmacao()
					}	
					limpa()
			enquanto(num != '0' e num != '1' e num != '2' ou num !='3')
			{	
				tela_not_found()
				u.aguarde(2000)
				limpa()
				tela_menu()
			}
	}
	//CATEGORIA MUSCULAÇÃO ↓			
	funcao tela_musc()
	{			
			escreva("    █████████████████████████████████████████████████████████████████████████████████████████████████████\n")
			escreva("    █                                                                                                   █\n")
			escreva("    █******************************************* MUSCULAÇÃO ********************************************█\n")
			escreva("    █═══════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █  [1] Cinturão    || [2] Colchonete  ||   [3] Corda    ||[4] Kit de Halteres || [5] Whey Protein   █\n")
			escreva("    █                  ||                 ||                ||                    ||                    █\n")
			escreva("    █                  ||                 ||                ||                    ||                    █\n")
			escreva("    █     R$219,00     ||   R$19,45       ||    R$27,77     ||     R$949,00       ||       R$91,99      █\n")
			escreva("    █═══════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █                                      PARA VOLTAR AO MENU [0]                                      █\n")
			escreva("    █                                    PARA FINALIZAR A COMPRA [8]                                    █\n")
			escreva("    █████████████████████████████████████████████████████████████████████████████████████████████████████\n")
			escreva("\t\t\t\t        Se interessou nestes itens? \n\n\t\t                 ↑ Digite um Item ou uma das Opções acima ↑\n")
			escreva("\n\t\t\t\t\t\t\t                             CARRINHO R$:",m.arredondar(totaLucha, 2), "\n\t\t\t\t\t\t\t                            Digite uma opção: ")
				leia(item)
			se(item == "1")
					{
					limpa()
					escreva("\tCinturão ",estcinturao," - unidades\n")
					escreva("Cinturão em couro sintético com espessura de 5mm.\n")
                         escreva("Estabiliza a Coluna Vertebral, protegendo-a de lesões.\n")
					escreva("Escolha a quantidade: \n")
					leia(qtcinturao)
					totaLucha = (itemcinturao * qtcinturao) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estcinturao = estcinturao - qtcinturao
					limpa()
					tela_musc()
					}
			senao se(item == "2")
					{
					limpa()
					escreva("\tColchonete ",estcolchonete," - unidades\n")
					escreva("Colchonete produzido em espuma. Medida: 90 x 40 x 3.\n")
					escreva("Escolha a quantidade: ")
					leia(qtcolchonete)
					totaLucha = (itemcolchonete * qtcolchonete) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estcolchonete = estcolchonete - qtcolchonete
					limpa()
					tela_musc()
					}
			senao se(item == "3")
					{
					limpa()
					escreva("\tCorda ",estcorda," - unidades\n")
					escreva("Corda de pular de PVC 6mm com rolamento 2,65m.\n")
					escreva("Esccolha a quantidade: ")
					leia(qtcorda)
					totaLucha = (itemcorda * qtcorda) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estcorda = estcorda - qtcorda
					limpa()
					tela_musc()
					}
			senao se(item == "4")
					{
					limpa()
					escreva("\tKit de Halteres ",esthalteres," - unidades\n")
					escreva("Kit de Halteres Revestidos Em PVC - Par de 500g,1,2,3 e 5 Kg.\n")
					escreva("Esccolha a quantidade: ")
					leia(qthalteres)
					totaLucha = (itemhalteres * qthalteres) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					esthalteres = esthalteres - qthalteres 
					limpa()
					tela_musc()
					}
			senao se(item == "5")
					{
					limpa()
					escreva("\tWhey Protein ",estwhey," - unidades\n")
					escreva("Whey protein contém prteínas concentradas e blends.900g.\n")
					escreva("Esccolha a quantidade: ")
					leia(qtwhey)
					totaLucha = (itemwhey * qtwhey) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estwhey = estwhey - qtwhey 
					limpa()
					tela_musc()
					}
			se(item == "0")
					{
					limpa()
					tela_menu()
					}
			se(item == "8")
					{
				tela_de_confirmacao()
					}		
					limpa()
			enquanto(num != '0' e num != '1' e num != '2' ou num !='3')
			{
				tela_not_found()
				u.aguarde(2000)
				limpa()
				tela_menu()
			}		
	}
	//CATEGORIA FUTEBOL ↓
	funcao tela_fut()
	{				
			escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████\n")
			escreva("    █                                                                                                  █\n")
			escreva("    █******************************************* FUTEBOL **********************************************█\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █    [1] Bola     || [2] Camisa    || [3] Chuteira   ||    [4] Meião      ||  [5] Caneleira        █\n")
			escreva("    █                 ||               ||                ||                   ||                       █\n")
			escreva("    █     R$59,99     ||   R$299,99    ||    R$179,99    ||      R$29,99      ||      R$49,99          █\n")
			escreva("    █══════════════════════════════════════════════════════════════════════════════════════════════════█\n")
			escreva("    █                                       PARA VOLTAR AO MENU [0]                                    █\n")
			escreva("    █                                      PARA FINALIZAR A COMPRA [8]                                 █\n")
			escreva("    ████████████████████████████████████████████████████████████████████████████████████████████████████\n")
			escreva("\t\t\t\t        Se interessou nestes itens? \n\n\t\t                 ↑ Digite um Item ou uma das Opções acima ↑\n")
			escreva("\n\t\t\t\t\t\t\t                             CARRINHO R$:",m.arredondar(totaLucha, 2), "\n\t\t\t\t\t\t\t                            Digite uma opção: ")
			leia(item)
				se(item == "1")
					{
					limpa()
					escreva("\tBola ",estbola," - unidades\n")
					escreva("Bola de futebol produzida em borracha, poliéster e E.V.A. Circunferência: 68 - 70 cm.\n")
					escreva("Escolha a quantidade: \n")
					leia(qtbola)
					totaLucha = (itembola * qtbola) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estbola = estbola - qtbola 
					limpa()
					tela_fut()
					}
				senao se(item == "2")
					{
					limpa()
					escreva("\tCamisa ",estcamisa," - unidades\n")
					escreva("Camisa seleção produzida 100% em poliéster reciclado. Tecnologia Dri-Fit.\n")
					escreva("Escolha a quantidade: ")
					leia(qtcamisa)
					totaLucha = (itemcamisa * qtcamisa) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estcamisa = estcamisa - qtcamisa 
					limpa()
					tela_fut()
					}
				senao se(item == "3")
					{
					limpa()
					escreva("\tChuteira ",estchuteira," - unidades\n")
					escreva("Chuteira tipo campo produzida em material sintético com trava fixa.\n")
					escreva("Esccolha a quantidade: ")
					leia(qtchuteira)
					totaLucha = (itemchuteira * qtchuteira) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estchuteira = estchuteira - qtchuteira
					limpa()
					tela_fut()
					}
				senao se(item == "4")
					{
					limpa()
					escreva("\tMeião ",estmeiao," - unidades\n")
					escreva("Meião indicado para jogo, produzido com material 84% poliéster, 11% algodão e 5% elastano.\n")
					escreva("Esccolha a quantidade: ")
					leia(qtmeiao)
					totaLucha = (itemmeiao * qtmeiao) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estmeiao = estmeiao - qtmeiao
					limpa()
					tela_fut()
					}
				senao se(item == "5")
					{
					limpa()
					escreva("\tCaneleira ",estcaneleira," - unidades\n")
					escreva("Caneleira produzida em poliuretano e espuma de E.V.A ventilada antibacteriana.\n")
					escreva("Esccolha a quantidade: ")
					leia(qtcaneleira)
					totaLucha = (itemcaneleira * qtcaneleira) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estcaneleira = estcaneleira - qtcaneleira
					limpa()
					tela_fut()
					}
				senao se(item == "8")
					{
						limpa()
						tela_de_confirmacao()
					}					
				se(item == "0")
					{
					limpa()
					tela_menu()
					}
				se(item == "8")
					{
					tela_de_confirmacao()
					}			
				limpa()
		enquanto(item != "0" e item != "1" e item != "2" ou item !="3")
			{	
				tela_not_found()
				u.aguarde(2000)
				limpa()
				tela_menu()
			}
	}
	//TELA CONFIRMAÇÃO COMPRA ↓
	funcao tela_de_confirmacao()
	{
			totaLucha = totaLucha m.arredondar(totaLucha, 2)
			escreva("    ════════════════════════════════════════ \n")
			escreva("    ***************** TOTAL **************** \n")
			escreva("    ════════════════════════════════════════ \n")

			se(qttatame >= 1){
			escreva("      Tatame - ",qttatame," --------------- R$ ",itemtatame,"\n")			
			}
			se(qtluva >= 1){
			escreva("      Luva - ",qtluva," ----------------- R$ ",itemluva,"\n")
			}
			se(qtbandagem >= 1){
			escreva("      Bandagem - ",qtbandagem," ------------- R$ ",itembandagem,"\n")
			}
			se(qtsaco >= 1){
			escreva("      Saco de Boxe - ",qtsaco," --------- R$ ",itemsaco,"\n")
			}
			se(qtprotetor >=1){
			escreva("      Protetor Bucal - ",qtprotetor," ------- R$ ",itemprotetor,"\n")
			}
			se(qtcinturao >=1){
			escreva("      Cinturão - ",qtcinturao," ------------- R$ ",itemcinturao,"\n")
			}
			se(qtcolchonete >= 1){
			escreva("      Colchonete - ",qtcolchonete," ----------- R$ ",itemcolchonete,"\n")
			}
			se(qtcorda >= 1){
			escreva("      Corda - ",qtcorda," ---------------- R$ ",itemcorda,"\n")
			}
			se(qthalteres >= 1){
			escreva("      Kit de Halteres - ",qthalteres," ------ R$ ",itemhalteres,"\n")
			}
			se(qtwhey >= 1){
			escreva("      Whey Protein - ",qtwhey," --------- R$ ",itemwhey,"\n")
			}
			se(qtbola >= 1){
			escreva("      Bola - ",qtbola," ----------------- R$ ",itembola,"\n")
			}
			se(qtcamisa >= 1){
			escreva("      Camisa - ",qtcamisa," --------------- R$ ",itemcamisa,"\n")
			}
			se(qtchuteira >= 1){
			escreva("      Chuteira - ",qtchuteira," ------------- R$ ",itemchuteira,"\n")
			}
			se(qtmeiao >= 1){
			escreva("      Meião - ",qtmeiao," ---------------- R$ ",itemmeiao,"\n")
			}
			se(qtcaneleira >= 1){
			escreva("      Caneleira - ",qtcaneleira," ------------ R$ ",itemcaneleira,"\n\n")
			}
			
			escreva("                   R$ ",m.arredondar(totaLucha,2),"\n")
			escreva("    ════════════════════════════════════════ \n")
			escreva("\tDeseja confirmar a sua compra? \n\tDigite S para sim ou N para não: ")
			leia (resp)
		se(resp == "S" ou resp == "s")
		{
			escreva ("\tCompra realizada com sucesso!\n")
			u.aguarde(1500)
			tela_logout()
		}
		senao
		{
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
 * @POSICAO-CURSOR = 7966; 
 * @DOBRAMENTO-CODIGO = [39, 125, 120, 108, 131, 139, 85, 162, 196, 200, 204, 208, 212, 216, 223, 235, 245, 259, 263, 563, 568, 639, 645];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */