programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
		//VALOR FIXO PARA OS PRODUTOS ↓
		const real itemtatame = 961.40, itemluva = 159.99, itembandagem = 38.79, itemsaco = 175.00, itemprotetor = 84.15, //Vl. unitário
				 itemcinturao = 219.00, itemcolchonete = 19.45, itemcorda = 27.77, itemhalteres = 949.00, itemwhey = 91.99,//Vl. unitário
				 itembola = 59.99, itemcamisa = 299.99, itemchuteira = 179.99, itemmeiao = 29.99, itemcaneleira = 49.99//Vl. unitário
		//QUANTIDADE ITENS ↓
		inteiro esttatame = 15, estluva = 10, estbandagem = 5, estsaco = 25, estprotetor =20, //estoque lucha
			   estcinturao = 45, estcolchonete = 50, estcorda = 34, esthalteres = 30, estwhey = 42, //estoque musculação
			   estbola = 32, estcamisa = 11, estchuteira = 13, estmeiao = 22, estcaneleira = 24, //estoque futebol 
			   qttatame, qtluva, qtbandagem, qtsaco, qtprotetor, //multiplicadores
			   qtcinturao, qtcolchonete, qtcorda, qthalteres, qtwhey,//multiplicadores
			   init, qtbola, qtcamisa, qtchuteira, qtmeiao, qtcaneleira//multiplicadores
		//CARREGAR GIF ↓

		inteiro mutcha = g.carregar_imagem("mutcha.GIF"), whey =g.carregar_imagem("whey.gif"), saco = g.carregar_imagem("saco.gif"), protetor =g.carregar_imagem("protetor.gif"), meiao = g.carregar_imagem("meiao.gif"),
			halteres =g.carregar_imagem("halteres.gif"), luva = g.carregar_imagem("luva.gif"),corda =g.carregar_imagem("corda.gif"), colchonete = g.carregar_imagem("colchonete.gif"),	
			cinturao =g.carregar_imagem("cinturao.gif"), chuteira = g.carregar_imagem("chuteira.gif"),caneleira =g.carregar_imagem("caneleira.gif"), camisa = g.carregar_imagem("camisa.gif"),
			bola =g.carregar_imagem("bola.gif"), bandagem = g.carregar_imagem("bandagem.gif"), tatame = g.carregar_imagem("tatame.gif"), muchalucha =g.carregar_imagem("muchalucha.gif"), cats = g.carregar_imagem("cats.GIF")
		
		//VARIÁVEL DO CARRINHO ↓
		real TotalCarrinho, totaLucha = 0.00
		//LOGIN ADMIN ↓
		cadeia resp, loginglobal, item 		 	
		//LOGIN USÁRIO COMUM ↓
		caracter num
	//ORDEM DAS FUNÇÕES ↓
	funcao inicio()
	{		
			logo()
			cadastro()
			tela_menu()
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
			escreva("  ██      ██  ██████   ██████ ██   ██ ██   ██     ███████  ██████   ██████ ██   ██ ██   ██\n\n")
			u.aguarde(30)      
			
			escreva("               ╔≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈╗\n")
			escreva("               ║                     Bem-vindo!                    ║\n")
			escreva("               ║                                                   ║\n")
			escreva("               ║    Gostaria de ter acesso aos nossos produtos?    ║\n")
			escreva("               ╚≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈╝\n\n")
			escreva("                      Digite [S] para entrar ou [N] para sair: ")
			leia(resp)
			
			
			
			/*escreva("\t\t\t\t\tBem-vindo! \n\t\t\t Gostaria de ter acesso aos nossos produtos?\n\t\t\t  Digite [S] para entrar ou [N] para sair: ")
			leia(resp)  */
		se(resp == "sim" ou resp == "Sim" ou resp == "S" ou resp == "s")
		{
				//CARREGANDO ANIMADO ↓
				escreva("\n\t\t\t\t     Carregando")
			para(init=1; init <4; init++)					
				{											
            		u.aguarde(0300)
            		escreva(".")						
           		}
				u.aguarde(0300)
				g.iniciar_modo_grafico(verdadeiro)
				g.definir_dimensoes_janela(480, 360)
				g.definir_titulo_janela("Loading...")
				g.desenhar_imagem(0,0, mutcha)
				g.renderizar()
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
	{		
			totaLucha = 0.00
			limpa()
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
          para (inteiro i = 0 ; i < total ; i++)
          
          se (acesso == login[i]) 
          se (senha == codigo[i])
			confere = verdadeiro
               escreva("\n\t\t\t\t     Carregando")
		
		para(init=1; init <4; init++){
               u.aguarde(0300)
               escreva(".")
               }
                
               u.aguarde(0200)
               limpa()


		se (nao confere){
                escreva("Login ou senha inválidos\n")
                escreva("Tentar novamente? S ou N: ")
                leia(tentar)


          se (tentar == "S" ou tentar == "s"){
			cadastro()
          	}
                
 		senao se (tentar == "N" ou tentar == "n"){
                tela_logout()
               }
                
          senao{
                limpa()
                escreva("Opção inválida!")
                u.aguarde(0500)
                cadastro()
          	}
      }
            }enquanto (nao confere)
			loginglobal = acesso
               escreva("\t \t \t     Bem-vindo(a), ", acesso, ".\n\n")
               tela_menu()
			limpa()
               escreva("\nAguarde enquanto carregamos as informações")

          //ANIMAÇÃO TRÊS PONTINHOS CARREGANDO... ↓
          
		para(inteiro i =1; i<4; i++){
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
	}	
	//TELA DE NÃO ENCONTRADA ↓
	funcao tela_not_found()
 	{

			escreva("	▓██▓███   ▄▄▄        ▄████ ▓█████     ███▄    █  ▒█████  ▄▄▄█████▓     █████▒▒█████   █    ██  ███▄    █ ▓█████▄  \n")  
			escreva("	▓██░  ██▒▒████▄     ██▒ ▀█▒▓█   ▀     ██ ▀█   █ ▒██▒  ██▒▓  ██▒ ▓▒   ▓██   ▒▒██▒  ██▒ ██  ▓██▒ ██ ▀█   █ ▒██▀ ██▌ \n")
			escreva("	▓██░ ██▓▒▒██  ▀█▄  ▒██░▄▄▄░▒███      ▓██  ▀█ ██▒▒██░  ██▒▒ ▓██░ ▒░   ▒████ ░▒██░  ██▒▓██  ▒██░▓██  ▀█ ██▒░██   █▌ \n")
			escreva("	▒██▄█▓▒ ▒░██▄▄▄▄██ ░▓█  ██▓▒▓█  ▄    ▓██▒  ▐▌██▒▒██   ██░░ ▓██▓ ░    ░▓█▒  ░▒██   ██░▓▓█  ░██░▓██▒  ▐▌██▒░▓█▄   ▌ \n")   
			escreva("	▒██▒ ░  ░ ▓█   ▓██▒░▒▓███▀▒░▒████▒   ▒██░   ▓██░░ ████▓▒░  ▒██▒ ░    ░▒█░   ░ ████▓▒░▒▒█████▓ ▒██░   ▓██░░▒████▓  \n")  
			escreva("	▒▓▒░ ░  ░ ▒▒   ▓▒█░ ░▒   ▒ ░░ ▒░ ░   ░ ▒░   ▒ ▒ ░ ▒░▒░▒░   ▒ ░░       ▒ ░   ░ ▒░▒░▒░ ░▒▓▒ ▒ ▒ ░ ▒░   ▒ ▒  ▒▒▓  ▒  \n")  
			escreva("	░▒ ░       ▒   ▒▒ ░  ░   ░  ░ ░  ░   ░ ░░   ░ ▒░  ░ ▒ ▒░     ░        ░       ░ ▒ ▒░ ░░▒░ ░ ░ ░ ░░   ░ ▒░ ░ ▒  ▒  \n")  

 	}
 	//TELA MENU ↓
 	funcao tela_menu()
	{		
			escreva("    ███████████████████████████████████████████████████████████████████████\n")
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
			escreva("    █                     CONHECER NOSSAS ACADEMIAS [7]                   █\n")
			escreva("    █                      PARA FINALIZAR A COMPRA [8]                    █\n")
			escreva("    █                        PARA SAIR PRESSIONE [0]                      █\n")
			escreva("    ███████████████████████████████████████████████████████████████████████\n")
			escreva("\n\t\tEscolha uma categoria ou uma das opções acima")
			escreva("\n\n\t\t\t\t\t\t\t CARRINHO R$:",m.arredondar(totaLucha, 2),"\n")
			escreva("\t\t\t\t\t\t\t Digite uma opção: ")
			leia(num)
		limpa()
		
		se (num == '0'){
			escreva("\n\t\t\t\t     Carregando")
		
		para (init=1; init <4; init++){											
            	u.aguarde(0100)
            	escreva(".")						
          }
			u.aguarde(0200)
			limpa()

			logo()
		}
		se (num == '1'){
			escreva("\n\t\t\t\t     Carregando")
			
		para (init=1; init <4; init++){											
            	u.aguarde(0100)
            	escreva(".")						
          }
			u.aguarde(0200)
			limpa()
			tela_lucha()
		}
		se (num == '2'){
			escreva("\n\t\t\t\t     Carregando")
		
		para (init=1; init <4; init++){											
            	u.aguarde(0100)
            	escreva(".")						
           }
			u.aguarde(0200)
			limpa()
			tela_musc()
		}
		se (num == '3'){
			escreva("\n\t\t\t\t     Carregando")
		
		para (init=1; init <4; init++){											
            	u.aguarde(0100)
            	escreva(".")						
          }
			u.aguarde(0200)
			limpa()
			tela_fut()
		}
		
		se (num == '8'){
			escreva("\n\t\t\t\t     Carregando")
		
		para (init=1; init <4; init++){											
			u.aguarde(0100)
            	escreva(".")						
          }
			u.aguarde(0200)
			limpa()
			tela_de_confirmacao()
		}
		se (num == '7'){
			escreva("\n\t\t\t\t     Carregando")
			
		para (init=1; init <4; init++)					{											
            	u.aguarde(0100)
            	escreva(".")						
          }
			u.aguarde(0200)
			limpa()
			tela_acad_mucha()
		}
          enquanto(num != '0' e num != '1' e num != '2' e num !='3'){
			tela_not_found()
			u.aguarde(2000)
			limpa()
			tela_menu()
		}

	}
	//TELA DESCONEXÃO ↓		
	funcao tela_logout()
	{
			limpa()
	  		escreva("\t\t\t Desconectando")
		para (init=1; init <4; init++)/* ajustar*/
			{
            	u.aguarde(0200)
            	escreva(".")
            	u.aguarde(0100)
			}
			limpa()
            	escreva("\nPara retornar a tela login [1] ou para encerrar o sistema [0].\nDigite uma das opções acima:  ")
			leia(num)
			limpa()
		se (num == '0') {
			g.iniciar_modo_grafico(verdadeiro)
		     g.definir_dimensoes_janela(500, 360)
		     g.definir_titulo_janela("Disconnecting..")
	          g.desenhar_imagem(0,0, muchalucha)
	          g.renderizar()
	          escreva("\t\t ...Até logo...\n")
	          u.aguarde(1500)
	          g.fechar_janela()
		}

		se (num == '1'){
				cadastro()
		}
		
		senao se(num != '1'){
			u.aguarde(0700)
			limpa()
			tela_logout()
		}
	}
	//CATEGORIA LUTA ↓		
	funcao tela_lucha()
	{		 
			escreva("\t\t\t\t\t\t\t\t\t\t\t\t ",loginglobal,"\n")
			escreva("\t\t\t\t\t\t\t\t\t\t\t\t SAIR[9]\n")
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

		se(item == "1"){
			limpa()
			escreva("                     Tatame ",esttatame," - unidades\n")
			escreva("   ███████████████████████████████████████████████████\n")
			escreva("   █                                                 █\n")
			escreva("   █ Tatame composto com quatro placas,              █\n")
			escreva("   █ com área total de  9.1m² e espessura de 40mm.   █\n")
			escreva("   █                                                 █\n")
			escreva("   ███████████████████████████████████████████████████\n\n")
			escreva("   Escolha a quantidade: \n")
		  			g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 360)
					g.definir_titulo_janela("tatame")
					g.desenhar_imagem(0,0, tatame )
					g.renderizar()
					leia(qttatame)
					g.encerrar_modo_grafico()
		enquanto (qttatame > esttatame){
			limpa()
			escreva("Quantidade inválida: ")
			u.aguarde(1000)
			limpa()
			tela_lucha()
		}		
			totaLucha = (itemtatame * qttatame) + totaLucha 
			esttatame = esttatame - qttatame
			limpa()
			tela_lucha()
	}
		senao se(item == "2"){
				limpa()
			escreva("                   Luva ",estluva," - unidades\n")
			escreva("   █████████████████████████████████████████████████\n")
		     escreva("   █                                               █\n")
		     escreva("   █ Luva confeccionada em material resistente,    █\n")
		     escreva("   █ palmas alcochoadas para absorção de impacto   █\n")
			escreva("   █ e proteção para dedos e punho.                █\n")
			escreva("   █                                               █\n")
			escreva("   █████████████████████████████████████████████████\n\n")
			escreva("   Escolha a quantidade: ")

					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 360)
					g.definir_titulo_janela("Luva")
					g.desenhar_imagem(0,0, luva )
					g.renderizar()
					leia(qtluva)
					g.encerrar_modo_grafico()
		enquanto (qtluva > estluva){
			limpa()
			escreva("Quantidade inválida: ")
			u.aguarde(1000)
			limpa()
			tela_lucha()
		}
			totaLucha = (itemluva * qtluva) + totaLucha m.arredondar(totaLucha, 2)
			totaLucha = totaLucha m.arredondar(totaLucha, 2)
			estluva = estluva - qtluva
			limpa()
			tela_lucha()
		}
		senao se (item == "3"){
			limpa()
			escreva("                  Bandagem ",estbandagem," - unidades\n")
			escreva("   ██████████████████████████████████████████████████████\n")
			escreva("   █                                                    █\n")
			escreva("   █ Bandagem desenvolvida para evitar lesões no punho. █\n")
			escreva("   █ Fabricada em 60% poliamida e 40% poliéster.        █\n")
			escreva("   █                                                    █\n")
			escreva("   ██████████████████████████████████████████████████████\n\n")
			escreva("   Escolha a quantidade: ")

					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 360)
					g.definir_titulo_janela("Luva")
					g.desenhar_imagem(0,0, bandagem )
					g.renderizar()
					leia(qtbandagem)
					g.encerrar_modo_grafico()
		enquanto (qtbandagem > estbandagem){
			limpa()
			escreva("Quantidade inválida: ")
			u.aguarde(1000)
			limpa()
			tela_lucha()	
		}					
			totaLucha = (itembandagem * qtbandagem) + totaLucha  m.arredondar(totaLucha, 2)
			totaLucha = totaLucha m.arredondar(totaLucha, 2)
			estbandagem = estbandagem - qtbandagem
			limpa()
			tela_lucha()
	}
		senao se (item == "4"){
			limpa()
			escreva("                  Saco de Boxe ",estsaco," - unidades\n")
			escreva("   ████████████████████████████████████████████████████\n")
			escreva("   █                                                  █\n")
			escreva("   █ Saco de boxe com dimensões de 40 cm de altura,   █\n")
			escreva("   █ 50 cm de largura e 80 cm comprimento.            █\n")
			escreva("   █                                                  █\n")
			escreva("   ████████████████████████████████████████████████████\n\n")
			escreva("   Escolha a quantidade: ")
					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 360)
					g.definir_titulo_janela("saco")
					g.desenhar_imagem(0,0, saco)
					g.renderizar()
					leia(qtsaco)
					g.encerrar_modo_grafico()
			enquanto (qtsaco > estsaco){
				limpa()
				escreva("Quantidade inválida: ")
				u.aguarde(1000)
				limpa()
				tela_lucha()	
		}
				totaLucha = (itemsaco * qtsaco) + totaLucha  m.arredondar(totaLucha, 2)
				totaLucha = totaLucha m.arredondar(totaLucha, 2)
				estsaco = estsaco - qtsaco
				limpa()
				tela_lucha()
	}
		senao se (item == "5"){
			limpa()
			escreva("                Protetor Bucal ",estprotetor," - unidades\n")
			escreva("   ██████████████████████████████████████████████████\n")
			escreva("   █                                                █\n")
			escreva("   █ Protetor bucal em E.V.A não tóxico moldavél,   █\n")
			escreva("   █ indicado para praticas de artes marciais.      █\n")
			escreva("   █                                                █\n")
			escreva("   ██████████████████████████████████████████████████\n\n")
			escreva("   Escolha a quantidade: ")

					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 360)
					g.definir_titulo_janela("Luva")
					g.desenhar_imagem(0,0, protetor)
					g.renderizar()
					leia(qtprotetor)
					g.encerrar_modo_grafico()
		enquanto (qtprotetor > estprotetor){
				limpa()
				escreva("Quantidade inválida: ")
				u.aguarde(1000)
				limpa()
				tela_lucha()	
		}
				totaLucha = (itemprotetor * qtprotetor) + totaLucha m.arredondar(totaLucha, 2)
				totaLucha = totaLucha m.arredondar(totaLucha, 2)
				estprotetor = estprotetor - qtprotetor
				limpa()
				tela_lucha()
	}
		se (item == "0"){
			limpa()
			tela_menu()
			}
		senao se (item == "8"){
			tela_de_confirmacao()
		}	
			limpa()
				
		se (item == "9"){
			tela_logout()
		}
		
		senao se(num != '0' e num != '1' e num != '2' e num !='3'){	
			tela_not_found()
			u.aguarde(2000)
			limpa()
			tela_menu()
		}
	}
	//CATEGORIA MUSCULAÇÃO ↓			
	funcao tela_musc(){		
			escreva("\t\t\t\t\t\t\t\t\t\t\t\t ",loginglobal,"\n")
			escreva("\t\t\t\t\t\t\t\t\t\t\t\t SAIR[9]\n")	
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
		se (item == "1"){
			limpa()
			escreva("                  Cinturão ",estcinturao," - unidades\n")
			escreva("   ██████████████████████████████████████████████████████\n")
			escreva("   █                                                    █\n")
			escreva("   █ Cinturão em couro sintético com espessura de 5mm.  █\n")
			escreva("   █ Estabiliza a Coluna Vertebral, protegendo-a        █\n")
			escreva("   █ de lesões.                                         █\n")
			escreva("   █                                                    █\n")
			escreva("   ██████████████████████████████████████████████████████\n\n")
			escreva("   Escolha a quantidade: ")
					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 360)
					g.definir_titulo_janela("Cinturão")
					g.desenhar_imagem(0,0, cinturao )
					g.renderizar()
					leia(qtcinturao)
					g.encerrar_modo_grafico()
				enquanto(qtcinturao > estcinturao){
					limpa()
					escreva("Quantidade inválida: ")
					u.aguarde(1000)
					limpa()
					tela_musc()	
			}
					totaLucha = (itemcinturao * qtcinturao) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estcinturao = estcinturao - qtcinturao
					limpa()
					tela_musc()
			}
		senao se (item == "2"){
			limpa()
			escreva("           Colchonete ",estcolchonete," - unidades\n")
			escreva("   ██████████████████████████████████████\n")
			escreva("   █                                    █\n")
			escreva("   █ Colchonete produzido em espuma.    █\n")
			escreva("   █ Medida: 90 x 40 x 3                █\n")
			escreva("   █                                    █\n")
			escreva("   ██████████████████████████████████████\n\n")
			escreva("   Escolha a quantidade: ")

					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 360)
					g.definir_titulo_janela("Colchonete")
					g.desenhar_imagem(0,0, colchonete)
					g.renderizar()
					leia(qtcolchonete)
					g.encerrar_modo_grafico()
			enquanto (qtcolchonete > estcolchonete){
					limpa()
					escreva("Quantidade inválida: ")
					u.aguarde(1000)
					limpa()
					tela_musc()	
					}
					totaLucha = (itemcolchonete * qtcolchonete) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estcolchonete = estcolchonete - qtcolchonete
					limpa()
					tela_musc()
					}
		senao se (item == "3"){
				limpa()
				escreva("                   Corda ",estcorda," - unidades\n")
				escreva("   █████████████████████████████████████████████████████\n")
			     escreva("   █                                                   █\n")
			     escreva("   █ Corda de pular de PVC 6mm com rolamento 2,65m.    █\n")
			     escreva("   █                                                   █\n")
			     escreva("   █████████████████████████████████████████████████████\n\n")
				escreva("   Esccolha a quantidade: ")

					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 360)
					g.definir_titulo_janela("Corda")
					g.desenhar_imagem(0,0, corda )
					g.renderizar()
					leia(qtcorda)
					g.encerrar_modo_grafico()

			
			enquanto (qtcorda > estcorda){

					limpa()
					escreva("Quantidade inválida: ")
					u.aguarde(1000)
					limpa()
					tela_musc()	
					}
					totaLucha = (itemcorda * qtcorda) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estcorda = estcorda - qtcorda
					limpa()
					tela_musc()
					}
		senao se (item == "4"){
				limpa()
				escreva("            Kit de Halteres ",esthalteres," - unidades\n")
				escreva("   █████████████████████████████████████████\n")
			     escreva("   █                                       █\n")
			     escreva("   █ Kit de Halteres Revestidos Em PVC.    █\n")
			     escreva("   █ Par de 500g,1,2,3 e 5 Kg.             █\n")
			     escreva("   █                                       █\n")
			     escreva("   █████████████████████████████████████████\n\n")
				escreva("   Esccolha a quantidade: ")

					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 360)
					g.definir_titulo_janela("halteres")
					g.desenhar_imagem(0,0, halteres)
					g.renderizar()
					leia(qthalteres)
					g.encerrar_modo_grafico()
			
				enquanto (qthalteres > esthalteres){

					limpa()
					escreva("Quantidade inválida: ")
					u.aguarde(1000)
					limpa()
					tela_musc()	
				}
					totaLucha = (itemhalteres * qthalteres) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					esthalteres = esthalteres - qthalteres 
					limpa()
					tela_musc()
					}

		senao se (item == "5"){
				limpa()
				escreva("               Whey Protein ",estwhey," - unidades\n")
				escreva("   ████████████████████████████████████████████████\n")
			     escreva("   █                                              █\n")
			     escreva("   █ Whey protein contém prteínas concentradas    █\n")
			     escreva("   █ e blends.                                    █\n")
			     escreva("   █ 900g.                                        █\n")
			     escreva("   █                                              █\n")
			     escreva("   ████████████████████████████████████████████████\n\n")
					escreva("   Esccolha a quantidade: ")
					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(360, 480)
					g.definir_titulo_janela("Whey")
					g.desenhar_imagem(0,0, whey)
					g.renderizar()
					leia(qtwhey)
					g.encerrar_modo_grafico()

			enquanto (qtwhey > estwhey){

					limpa()
					escreva("Quantidade inválida: ")
					u.aguarde(1000)
					limpa()
					tela_musc()	
			}
			
					totaLucha = (itemwhey * qtwhey) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estwhey = estwhey - qtwhey 
					limpa()
					tela_musc()
					}
		se (item == "0"){
				limpa()
				tela_menu()
		}
		
		se (item == "8"){
				tela_de_confirmacao()
				}
		se (item == "9"){
				tela_logout()
		}		
				limpa()
			enquanto (num != '0' e num != '1' e num != '2' ou num !='3'){
				tela_not_found()
				u.aguarde(2000)
				limpa()
				tela_menu()
			}		
	}
	//CATEGORIA FUTEBOL ↓
	funcao tela_fut(){		
			escreva("\t\t\t\t\t\t\t\t\t\t\t\t ",loginglobal,"\n")
			escreva("\t\t\t\t\t\t\t\t\t\t\t\t SAIR[9]\n")		
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
		se (item == "1"){
			limpa()
			escreva("                 Bola ",estbola," - unidades\n")
			escreva("   █████████████████████████████████████████████\n")
			escreva("   █                                           █\n")
			escreva("   █ Bola de futebol produzida em borracha,    █\n")
			escreva("   █ poliéster e E.V.A.                        █\n")
			escreva("   █ Circunferência: 68 - 70 cm.               █\n")
			escreva("   █                                           █\n")
			escreva("   █████████████████████████████████████████████\n\n")
			escreva("   Escolha a quantidade: ")

					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 480)
					g.definir_titulo_janela("Bola")
					g.desenhar_imagem(0,0, bola )
					g.renderizar()
					leia(qtbola)
					g.encerrar_modo_grafico()
		
			enquanto (qtbola > estbola){
					limpa()
					escreva("Quantidade inválida: ")
					u.aguarde(1000)
					limpa()
					tela_fut()	
				}
					totaLucha = (itembola * qtbola) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estbola = estbola - qtbola 
					limpa()
					tela_fut()
				}
				senao se (item == "2"){
				limpa()
				escreva("                   Camisa ",estcamisa," - unidades\n")
				escreva("   █████████████████████████████████████████████████\n")
			     escreva("   █                                               █\n")
			     escreva("   █ Camisa seleção produzida 100% em poliéster    █\n")
			     escreva("   █ reciclado.                                    █\n")
			     escreva("   █ Tecnologia Dri-Fit.                           █\n")
			     escreva("   █                                               █\n")
			     escreva("   █████████████████████████████████████████████████\n\n")
				escreva("   Escolha a quantidade: ")

					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 480)
					g.definir_titulo_janela("camisa")
					g.desenhar_imagem(0,0, camisa )
					g.renderizar()
					leia(qtcamisa)
					g.encerrar_modo_grafico()
			enquanto (qtcamisa > estcamisa){
					limpa()
					escreva("Quantidade inválida: ")
					u.aguarde(1000)
					limpa()
					tela_fut()
			}
					totaLucha = (itemcamisa * qtcamisa) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estcamisa = estcamisa - qtcamisa 
					limpa()
					tela_fut()
					}
		senao se (item == "3"){
				limpa()
				escreva("                   Chuteira ",estchuteira," - unidades\n")
				escreva("   ████████████████████████████████████████████████\n")
			     escreva("   █                                              █\n")
			     escreva("   █ Chuteira tipo campo produzida em material    █\n")
			     escreva("   █ sintético com trava fixa.                    █\n")
			     escreva("   █                                              █\n")
			     escreva("   ████████████████████████████████████████████████\n\n")
				escreva("   Esccolha a quantidade: ")
					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 480)
					g.definir_titulo_janela("Chuteira")
					g.desenhar_imagem(0,0, chuteira)
					g.renderizar()
					leia(qtchuteira)
					g.encerrar_modo_grafico()
			enquanto (qtchuteira > estchuteira){
					limpa()
					escreva("Quantidade inválida: ")
					u.aguarde(1000)
					limpa()
					tela_fut()
			}
					totaLucha = (itemchuteira * qtchuteira) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estchuteira = estchuteira - qtchuteira
					limpa()
					tela_fut()
		}
		senao se (item == "4"){
				limpa()
				escreva("                    Meião ",estmeiao," - unidades\n")
				escreva("   ████████████████████████████████████████████\n")
			     escreva("   █                                          █\n")
			     escreva("   █ Meião indicado para jogo,                █\n")
			     escreva("   █ produzido com material 84% poliéster,    █\n")
			     escreva("   █ 11% algodão e 5% elastano.               █\n")
			     escreva("   █                                          █\n")
			     escreva("   ████████████████████████████████████████████\n\n")
				escreva("   Esccolha a quantidade: ")
					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 480)
					g.definir_titulo_janela("Meião")
					g.desenhar_imagem(0,0, meiao )
					g.renderizar()
					leia(qtmeiao)
					g.encerrar_modo_grafico()
			enquanto(qtmeiao > estmeiao){
					limpa()
					escreva("Quantidade inválida: ")
					u.aguarde(1000)
					limpa()
					tela_fut()
			}
 				  totaLucha = (itemmeiao * qtmeiao) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estmeiao = estmeiao - qtmeiao
					limpa()
					tela_fut()
			}
		senao se (item == "5"){
				limpa()
				escreva("                     Caneleira ",estcaneleira," - unidades\n")
				escreva("   ████████████████████████████████████████████████\n")
			     escreva("   █                                              █\n")
			     escreva("   █ Caneleira produzida em poliuretano           █\n")
			     escreva("   █ e espuma de E.V.A ventilada antibacteriana.  █\n")
			     escreva("   █                                              █\n")
			     escreva("   ████████████████████████████████████████████████\n\n")
				escreva("   Esccolha a quantidade: ")
					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(480, 480)
					g.definir_titulo_janela("Caneleira")
					g.desenhar_imagem(0,0, caneleira)
					g.renderizar()
					leia(qtcaneleira)
					g.encerrar_modo_grafico()
				enquanto (qtcaneleira > estcaneleira){
					limpa()
					escreva("Quantidade inválida: ")
					u.aguarde(1000)
					limpa()
					tela_fut()
			}
					totaLucha = (itemcaneleira * qtcaneleira) + totaLucha m.arredondar(totaLucha, 2)
					totaLucha = totaLucha m.arredondar(totaLucha, 2)
					estcaneleira = estcaneleira - qtcaneleira
					limpa()
					tela_fut()
		}				
		se(item == "0"){
				limpa()
				tela_menu()
			}
		se(item == "8"){
				tela_de_confirmacao()
		}
		se(item == "9"){
					tela_logout()
		}			
					limpa()
			enquanto(item != "0" ){	
					tela_not_found()
					u.aguarde(2000)
					limpa()
					tela_menu()
			}
		}
	//TELA CONFIRMAÇÃO COMPRA ↓
	funcao tela_de_confirmacao(){
			limpa()
			
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
		
		se(resp == "S" ou resp == "s"){
			escreva ("\tCompra realizada com sucesso!\n")
			u.aguarde(1500)
			tela_logout()
		}
		
		senao{
			limpa()
			tela_menu()
		}
	}
	//Academias MuchaLucha
	funcao tela_acad_mucha(){
			cadeia email
       		escreva("    ████████████████████████████████████████████████████████████████████████████████████\n")
			escreva("    █                                Academias MuchaLucha                              █\n")
			escreva("    █                                                                                  █\n")
			escreva("    █ MuchaLucha esportes de contato:              Academia Mucha Musculação:          █\n")
			escreva("    █                                                                                  █\n")
			escreva("    █ Que tal treinar na sede MuchaMucha?          Com sede também em Teresópolis,     █\n")
			escreva("    █                                              as academias MuchaLucha contam      █\n")
			escreva("    █ Nossa academia-sede, em Teresópolis,         com os melhores e mais modernos     █\n")
			escreva("    █ Rio de Janeiro, oferece aulas de             equipamentos.                       █\n")
			escreva("    █ Jiu-Jitsu, Boxe e Defesa pessoal.            Se o seu objetivo é conquistar um   █\n")
			escreva("    █                                              corpo mais forte, resistente, e     █\n")
			escreva("    █                                              uma vida mais saudavél venha fazer  █\n")
			escreva("    █                                              parte do nosso time.                █\n")
			escreva("    █                                                                                  █\n")
			escreva("    ████████████████████████████████████████████████████████████████████████████████████\n\n")
			escreva("    Cadastre-se, marque uma avaliação e venha fazer parte do nosso time!\n")
			escreva("    Digite seu endereço de e-mail ou [0] para MENU: ")
			leia(email)
			se (email == "0"){
				limpa()
				tela_menu()
			}
			
			se (email != "0")
			{
				limpa()
				escreva("\n\t\t\t\t     Carregando")
			
			para(init=1; init <4; init++)					{											
            		u.aguarde(0100)
            		escreva(".")						
           	}
				u.aguarde(0100)
			limpa()
				escreva("\n\t\t Parabéns! Agora você faz parte do time MuchaLucha.\n")
			     u.aguarde(1000)
	  			g.iniciar_modo_grafico(verdadeiro)
				g.definir_dimensoes_janela(500, 500)
				g.definir_titulo_janela("\t\t\tPARABÉNS")
				g.desenhar_imagem(0,0, cats)
				g.renderizar()
			limpa()
				u.aguarde(2000)
				g.encerrar_modo_grafico()
			limpa()
				tela_menu()
			}
	}
	//Academias MuchaLucha
	funcao tela_acad_mucha()
	{
			cadeia email
       		escreva("    ████████████████████████████████████████████████████████████████████████████████████\n")
			escreva("    █                                Academias MuchaLucha                              █\n")
			escreva("    █                                                                                  █\n")
			escreva("    █ MuchaLucha esportes de contato:              Academia Mucha Musculação:          █\n")
			escreva("    █                                                                                  █\n")
			escreva("    █ Que tal treinar na sede MuchaMucha?          Com sede também em Teresópolis,     █\n")
			escreva("    █                                              as academias MuchaLucha contam      █\n")
			escreva("    █ Nossa academia-sede, em Teresópolis,         com os melhores e mais modernos     █\n")
			escreva("    █ Rio de Janeiro, oferece aulas de             equipamentos.                       █\n")
			escreva("    █ Jiu-Jitsu, Boxe e Defesa pessoal.            Se o seu objetivo é conquistar um   █\n")
			escreva("    █                                              corpo mais forte, resistente, e     █\n")
			escreva("    █                                              uma vida mais saudavél venha fazer  █\n")
			escreva("    █                                              parte do nosso time.                █\n")
			escreva("    █                                                                                  █\n")
			escreva("    ████████████████████████████████████████████████████████████████████████████████████\n\n")
			escreva("    Cadastre-se, marque uma avaliação e venha fazer parte do nosso time!\n")
			escreva("    Digite seu endereço de e-mail ou [0] para MENU: ")
			leia(email)
			se(email == "0"){
				limpa()
				tela_menu()
			}
			se(email != "0")
			{
				limpa()
				escreva("\n\t\t\t\t     Carregando")
			para(init=1; init <4; init++)					
				{											
            		u.aguarde(0100)
            		escreva(".")						
           		}
				u.aguarde(0100)
			limpa()
				escreva("\n\t\t Parabéns! Agora você faz parte do time MuchaLucha.\n")
			     u.aguarde(1000)
	  			g.iniciar_modo_grafico(verdadeiro)
				g.definir_dimensoes_janela(500, 500)
				g.definir_titulo_janela("\t\t\tPARABÉNS")
				g.desenhar_imagem(0,0, cats)
				g.renderizar()
			limpa()
				u.aguarde(2000)
				g.encerrar_modo_grafico()
			limpa()
				tela_menu()
			}
	} 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * @POSICAO-CURSOR = 1171; 
 * @DOBRAMENTO-CODIGO = [38, 92, 192, 203, 308, 365, 396, 429, 461, 493, 525, 530, 535, 538, 347, 585, 566, 599, 631, 662, 694, 727, 732, 736, 741, 547, 787, 768, 820, 801, 852, 834, 885, 866, 917, 931, 936, 940, 944, 750, 959, 962, 965, 968, 971, 974, 977, 980, 983, 986, 989, 993, 996, 999, 1002, 1009, 1015, 953, 1022];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
