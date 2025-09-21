programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u

	
	funcao inicio()
	{


		escreva("███████╗ █████╗ ██╗    ██╗   ██╗███████╗     ██████╗    ██████╗ ██████╗ ██╗███╗   ██╗ ██████╗██╗██████╗ ███████╗\n")
		escreva("██╔════╝██╔══██╗██║    ██║   ██║██╔════╝    ██╔═══██╗   ██╔══██╗██╔══██╗██║████╗  ██║██╔════╝██║██╔══██╗██╔════╝\n")
		escreva("███████╗███████║██║    ██║   ██║█████╗      ██║   ██║   ██████╔╝██████╔╝██║██╔██╗ ██║██║     ██║██████╔╝█████╗  \n")
		escreva("╚════██║██╔══██║██║    ╚██╗ ██╔╝██╔══╝      ██║   ██║   ██╔═══╝ ██╔══██╗██║██║╚██╗██║██║     ██║██╔═══╝ ██╔══╝  \n")
		escreva("███████║██║  ██║███████╗╚████╔╝ ███████╗    ╚██████╔╝   ██║     ██║  ██║██║██║ ╚████║╚██████╗██║██║     ███████╗\n")
		escreva("╚══════╝╚═╝  ╚═╝╚══════╝ ╚═══╝  ╚══════╝     ╚═════╝    ╚═╝     ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝╚═╝╚═╝     ╚══════╝\n")
		escreva("\n", "\n")

		u.aguarde(3000)
		
		escolhaJogador()
		
	}

	
	funcao escrevaMaquina(cadeia texto, inteiro velocidade){ // escrita dos textos

		para(inteiro i=0; i < t.numero_caracteres(texto); i++){
		escreva(t.obter_caracter(texto, i))
		u.aguarde(velocidade)
	}
}

	funcao escolhaJogador(){// escolhe se vai começar o jogo

		
		cadeia narrador = "Olá jogador(a)! Eu sou o narrador, você esta pronto(a) para se torna a poderosa guerreira Neera?\n"
		escrevaMaquina(narrador, 25)
		escreva("-------------------------\n")
		escreva("| Sim --> s   Não --> n |\n")
		escreva("-------------------------\n")
		
		cadeia respostaJogador
		leia(respostaJogador)

		     se(respostaJogador == "n" ou respostaJogador == "N"){
			cadeia nao_esta_proto = "Que pena! Talvez você esteja pronto(a) na proxima."
			escrevaMaquina(nao_esta_proto, 25)

			}senao se(respostaJogador == "s" ou respostaJogador == "S"){
			inicioJogo()
			
			}senao se(respostaJogador != "s" ou  respostaJogador != "S" ou respostaJogador != "n" ou respostaJogador != "N"){
		    		enquanto(respostaJogador != "s" ou  respostaJogador != "S" ou respostaJogador != "n" ou respostaJogador != "N"){
		    			escreva("Resposta inválida! Tente novamente:")
		    			leia(respostaJogador)

		    			se(respostaJogador == "s" ou respostaJogador == "S"){
					inicioJogo()
					
					}senao se(respostaJogador == "n" ou respostaJogador == "N"){
					cadeia nao_esta_proto = "Que pena! Talvez você esteja pronto(a) na proxima."
					escrevaMaquina(nao_esta_proto, 25)
					pare

					}
		    		}
			}
	}


	funcao inicioJogo(){ // contextualizando a história do jogo e decorre

		limpa()
		cadeia contexto1 = "Em um dia como qualquer outro. A poderosa guerreira Neera, muito conhecida no reino de Galad pelos seus grandes feitos. Escuta um bater de asas alto vindo do céu."
		escrevaMaquina(contexto1, 25)
		
		
		cadeia contexto2 = "\nQuando ela olha para cima avista um grande dragão da Floresta dos Sussuros voando e fugindo de flexas, segurando algo em suas garras.\nCuriosa pelo motivo do dragão estar voando por cima do reino. A Neera decide ir até o castelo do rei"
		escrevaMaquina(contexto2, 25)

		
		cadeia suspense1 = "."
		escrevaMaquina(suspense1, 1000)
		cadeia suspense2 = "."
		escrevaMaquina(suspense2, 1000)
		cadeia suspense3 = "."
		escrevaMaquina(suspense3, 1000)
		escreva("\n", "\n")
		
		cadeia contexto3 = "Chegando no grande portão do castelo, Neera avista o rei e alguns soltados agitados. O rei percebe a sua presensa e chama ela.\nEle pede ajuda para Neera salvar o seu filho Idris o atual principe de Galad, das garras do dragão.\n"
		escrevaMaquina(contexto3, 25)


		
		cadeia fala1 = "Rei Mirk: Guerreira Neera! preciso de você agora.\nNeera: Magestade o que houve?\n"
		escrevaMaquina(fala1, 25)
		
		cadeia fala2 = "Rei Mirk: O meu filho foi levado pelo poderoso dragão. Você pode ir salva-lo?"
		escrevaMaquina(fala2, 25)
		escreva("\n")
		
		escreva("-------------------------\n")
		escreva("| Sim --> s   Não --> n |\n")
		escreva("-------------------------\n")
		
		cadeia respostaNeera 
		leia(respostaNeera)

		se(respostaNeera == "s" ou respostaNeera == "S"){
			contexto_primeiraBatalha()
		}
		senao se (respostaNeera == "n" ou respostaNeera == "N"){
			cadeia prisao = "Rei Mirk: Não!? Guardas! Prendão ela, AGORA!!!!"
			escrevaMaquina(prisao, 25)
			escreva("\n")
			
			cadeia calabouco = "(Neera é presa para sempre, apodrecendo no calabouço. O principe Idris não é salvo e nunca mais é visto. O rei Mirk vive o resto de sua vida em tristeza profunda.)"
			escrevaMaquina(calabouco, 25)
			escreva("\n", "\n", "\n")
			
			game_over(1500, 0)
	
		}senao se(respostaNeera != "s" ou  respostaNeera != "S" ou respostaNeera != "n" ou respostaNeera != "N"){
		    		enquanto(respostaNeera != "s" ou  respostaNeera != "S" ou respostaNeera != "n" ou respostaNeera != "N"){
		    			escreva("Resposta inválida! Tente novamente:")
		    			leia(respostaNeera)

		    			se(respostaNeera == "s" ou respostaNeera == "S"){
					contexto_primeiraBatalha()
					
					}senao se(respostaNeera == "n" ou respostaNeera == "N"){
					cadeia prisao = "Rei Mirk: Não!? Guardas! Prendão ela, AGORA!!!!"
					escrevaMaquina(prisao, 25)
					escreva("\n")
			
					cadeia calabouco = "(Neera é presa para sempre, apodrecendo no calabouço. O principe Idris não é salvo e nunca mais é visto. O rei Mirk vive o resto de sua vida em tristeza profunda.)"
					escrevaMaquina(calabouco, 25)
					escreva("\n", "\n", "\n")
			
					game_over(1500, 0)

					}
		    		}
		   }
	}

	funcao game_over(inteiro esperar, inteiro check_point){
		cadeia resposta
		u.aguarde(esperar)

		escreva(" ██████╗  █████╗ ███╗   ███╗███████╗     ██████╗ ██╗   ██╗███████╗██████╗ ")
   		escreva("\n██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔═══██╗██║   ██║██╔════╝██╔══██╗")
  		escreva("\n██║  ███╗███████║██╔████╔██║█████╗      ██║   ██║██║   ██║█████╗  ██████╔╝")
  		escreva("\n██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗")
   		escreva("\n╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ╚██████╔╝ ╚████╔╝ ███████╗██║  ██║")
   		escreva("\n ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝     ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝")

   		u.aguarde(2500)

   		escreva("\n\nVocê deseja ver a história desde o início?\n")
   		escreva("-------------------------\n")
		escreva("| Sim --> s   Não --> n |\n")
		escreva("-------------------------\n")
		leia(resposta)

		se(resposta == "s" ou resposta == "S"){
			inicioJogo()

		}senao se(resposta == "n" ou resposta == "N"){

			se(check_point == 0){
				inicioJogo()

			}senao se(check_point == 1){
				defender_atacar(resposta)
				
			}senao se(check_point == 2){
				oi()
			}
			
		}senao se(resposta != "s" ou  resposta != "S" ou resposta != "n" ou resposta != "N"){
		    		enquanto(resposta != "s" ou  resposta != "S" ou resposta != "n" ou resposta != "N"){
		    			escreva("Resposta inválida! Tente novamente:")
		    			leia(resposta)

		    			se(resposta == "s" ou resposta == "S"){
					inicioJogo()
					
					}senao se(resposta == "n" ou resposta == "N"){

						se(check_point == 0){
							inicioJogo()

						}senao se(check_point == 1){
							defender_atacar(resposta)
				
						}senao se(check_point == 2){
							oi()
					}
				}
		    	}
		}
	}

	funcao inteiro dano(inteiro minimo, inteiro maximo){
		inteiro danos = u.sorteia(minimo, maximo)

		retorne danos
	}

	funcao inteiro ataque(inteiro minimo, inteiro maximo){
		inteiro ataques = u.sorteia(minimo, maximo)

		retorne ataques
	}

	funcao inteiro vida(inteiro Vida, inteiro minimo, inteiro maximo){
		inteiro resultado = Vida - dano(minimo, maximo)
		retorne resultado
	}

	funcao inteiro Defesa(inteiro defesA, inteiro minimo, inteiro maximo){
		inteiro resultado = defesA - ataque(minimo, maximo)
		retorne resultado
	}

	
	funcao status(inteiro Vida, inteiro dano_minimo, inteiro dano_maximo, cadeia personagem, inteiro defesa){
		escreva("--------------------------------\n")
		escreva("| ", personagem, " está com: ", Vida, " de vida. |\n")
		escreva("| Pode dar de ", dano_minimo, " a ", dano_maximo, " de dano.  |\n")
		escreva("| Tem ", defesa, " de defesa.	       |\n")
		escreva("--------------------------------\n")
		
	}


	funcao defender_atacar(cadeia resposta){
		escreva("\n")
		cadeia defesaOUataque = "\n\nVocê deseja defender ou atacar?\n"
		escrevaMaquina(defesaOUataque, 25)
		escreva("------------------\n")
		escreva("| Defender --> d |\n")
		escreva("| Atacar --> a   |\n")
		escreva("------------------\n")

		leia(resposta)
		limpa()

		se(resposta == "a" ou resposta == "A"){
			atacarPrimeiroInimigo()
			
		}senao se(resposta == "d" ou resposta == "D"){
			defenderPrimeiroInimigo()
			
		}senao se(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){
		    		enquanto(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){
		    			escreva("Resposta inválida! Tente novamente:")
		    			leia(resposta)

		    			se(resposta == "a" ou resposta == "A"){
						atacarPrimeiroInimigo()
					
					}senao se(resposta == "d" ou resposta == "D"){
						defenderPrimeiroInimigo()
					}
		    		}
		}
		
	}

	funcao atacarPrimeiroInimigo(){
		 cadeia ataque_Neera1 = "Neera também parte para cima do goblin, empunhando a sua espada com confiança. Desferindo um golpe nele." 
		 escrevaMaquina(ataque_Neera1, 25)
		 inteiro valor_vidaInimigo1 = vida(80, 5, 15) //vida do inimigo depois do ataque
		 inteiro valor_defesaInimigo1 = Defesa(60, 5, 15) //defesa do inimigo depois do ataque de Neera

		 cadeia ataque_inimigo1 = "\nEle se recupera do ataque de Neera e ataca ela com sua espada. Fazendo ela ir para mais longe dele."
		 escrevaMaquina(ataque_inimigo1, 25)
		 inteiro valor_vidaNeera1 = vida(100, 4, 12) //vida da Neera depois do ataqua
		 inteiro valor_defesaNeera1 = Defesa(80, 4, 12)
		 
		 u.aguarde(500)

		 escreva("\n\nVocê deseja atacar ou esperar para se defender do próximo ataque inimigo? \n")
		 cadeia resposta
		 escreva("------------------\n")
	 	 escreva("| Defender --> d |\n")
	 	 escreva("| Atacar --> a   |\n")
	    	 escreva("------------------\n")
		 leia(resposta)
		 escreva("\n")

		se(resposta == "a" ou resposta == "A"){ //pronto
		 	cadeia ataque_Neera2 = "Nerra se prepara para atacar o goblin e corre em sua direção, lhe atacando.\n"
		 	escrevaMaquina(ataque_Neera2, 25)
		 
			cadeia defesaInimigo1 = "Ele leva o ataque, mas como estava de armadura o ataque foi minimizado.\n\n"
			escrevaMaquina(defesaInimigo1, 25)
			inteiro valor_defesaInimigo2 = Defesa(valor_defesaInimigo1, 5, 15)

			cadeia ataque_Inimigo2 = "Os goblins são conhecidos por serem traiçoeiros e usarem muitos truques.\nE ele não é diferente dos outros, ele tira algumas lâminas com veneno de sua armadura e joga na direção de Neera.\nComo Nerra não esperava o ataque das lâminas, ela é ferida."
			escrevaMaquina(ataque_Inimigo2, 25)
			inteiro valor_vidaNeera2 = vida(valor_vidaNeera1, 4, 15)
			inteiro valor_defesaNeera2 = Defesa(valor_defesaNeera1, 4, 15)

			escreva("\n\nVocê deseja esperar para se defender dos próximos truques do goblin ou deseja atacar? \n")
			escreva("------------------\n")
		 	escreva("| Defender --> d |\n")
		 	escreva("| Atacar --> a   |\n")
		    	escreva("------------------\n")
		    	leia(resposta)
		    	escreva("\n")

		    
		    	se(resposta == "d" ou resposta == "D"){//pronto
		    		cadeia defesaNeera1 = "Neera para e espera para ver se o goblin tem mais algum truque. O goblin vê uma brecha na guarda de Neera e corre em sua direção.\nMas Neera abaixou a guarda de proposito, ela se defende."
		    		inteiro valor_defesaNeera3 = Defesa(valor_defesaNeera2, 4, 12)
		    		//\nMas Neera abaixou a guarda de proposito, ela se defende e rapidamente dá um golpe no braço do goblin, em uma parte que a armadura não cobria perfeitamente."
		    		escrevaMaquina(defesaNeera1, 25)

		    		cadeia ataqueNeera4 = ""

		    		inteiro valor_defesaInimigo3 = Defesa(valor_defesaInimigo2, 5, 15)
		    		inteiro valor_vidaInimigo2 = vida(valor_vidaInimigo1, 5, 15)

		    		cadeia vc = "klop"

		    		escreva("\n", valor_defesaNeera3, "\n",valor_defesaInimigo3, "\n", valor_vidaInimigo2, "\n", valor_defesaInimigo3, "\n\n")
		    		
		    	}senao se(resposta == "a" ou resposta == "A"){//pronto
		    		cadeia ataque_Neera5 = "Nerra avança para atacar o goblin. Mas ela está fraca por causa do veneno. E o goblin a ataca"
		    		escrevaMaquina(ataque_Neera5, 25)
		    		
		    	}senao se(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){//se errar ta pronto
		    		enquanto(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){
		    			escreva("Resposta inválida! Tente novamente:")
		    			leia(resposta)

		    			se(resposta == "a" ou resposta == "A"){
		    				cadeia ataque_Neera5 = "Nerra avança para atacar o goblin. Mas ela está fraca por causa do veneno. E o goblin a ataca"
		    				escrevaMaquina(ataque_Neera5, 25)
					
					}senao se(resposta == "d" ou resposta == "D"){
						cadeia defesaNeera1 = "Neera para e espera para ver se o goblin tem mais algum truque. O goblin vê uma brecha na guarda de Neera e corre em sua direção.\nMas Neera abaixou a guarda de proposito, ela se defende."
				    		inteiro valor_defesaNeera3 = Defesa(valor_defesaNeera2, 4, 12)
				    		//\nMas Neera abaixou a guarda de proposito, ela se defende e rapidamente dá um golpe no braço do goblin, em uma parte que a armadura não cobria perfeitamente."
				    		escrevaMaquina(defesaNeera1, 25)
		
				    		cadeia ataqueNeera4 = ""
		
				    		inteiro valor_defesaInimigo3 = Defesa(valor_defesaInimigo2, 5, 15)
				    		inteiro valor_vidaInimigo2 = vida(valor_vidaInimigo1, 5, 15)
		
				    		cadeia vc = "klop"
						}//fim do se errar
		    		}
		}
		
	}senao se(resposta == "d" ou resposta == "D"){//pronto
			cadeia defesaNeera2 = "Depois de levar o ataque do goblin a Neera espera ele atacar novamente. Assim ela se defende do ataque usando a armadura do braço como escudo."
			escrevaMaquina(defesaNeera2, 25)
			inteiro valor_defesaNeera4 = Defesa(valor_defesaInimigo1, 4, 12)
			inteiro valor_vidaNeera4 = vida(valor_vidaNeera1, 4, 12)
			
			cadeia ataque_Inimigo3 = "\nMas o goblin agi rápido e acerta ela novemente. Fazendo ela bater em uma árvore.\n"
			inteiro valor_defesaNeera5 = Defesa(valor_defesaNeera4, 4, 12)
			inteiro valor_defesaNeera6 = Defesa(valor_defesaNeera5, 4, 12)
			inteiro valor_vidaNeera5 = vida(valor_vidaNeera4, 4, 12)

			cadeia defesaNeera3 = "O goblin corre na direção da Neera e tenta atacar ela, mas ela bloqueia o ataque dele."
			escreva(defesaNeera3, 25)
			inteiro valor_defesaNeera7 = Defesa(valor_defesaNeera6, 4, 12)

			cadeia ataque_Neera2 = "\nLogo após bloquear o ataque do goblin, ela acerta um golpe em seu joelho.\nO goblin fica com um pouco de difuculdade para andar.\n"
			escrevaMaquina(ataque_Neera2, 25)
			inteiro valor_defesaInimigo4 = Defesa(valor_defesaInimigo1, 5, 15)
			inteiro valor_vidaInimigo3 = vida(valor_vidaInimigo1, 5, 15)

			escreva("\nDeseja continuar atacando?\n")
			escreva("-------------------------\n")
			escreva("| Sim --> s   Não --> n |\n")
			escreva("-------------------------\n")
			leia(resposta)

			se(resposta == "s" ou resposta == "S"){ //pronto
				cadeia ataque_Neera3 = "Neera aproveita que o goblin não está conseguindo se mexer direito e ataca ele algumas vez.\n"
				escrevaMaquina(ataque_Neera3, 25)
				inteiro valor_defesaInimigo5 = Defesa(valor_defesaInimigo4, 5, 22)
				inteiro valor_vidaInimigo4 = vida(valor_vidaInimigo3, 5, 22)

				cadeia ataque_Neera4 = "O goblin se defende com dificuldade e tenta atacar Neera, mas ela se defende com facilidade e continua atacando ele.\n"
				escrevaMaquina(ataque_Neera4, 24)
				inteiro valor_defesaInimigo6 = Defesa(valor_defesaInimigo5, 5, 22)
				inteiro valor_vidaInimigo5 = vida(valor_vidaInimigo4, 5, 22)

				cadeia truque_Inimigo1 = "O goblin consegue sair correndo com dificuldade para perto de algumas árvores e Neera vai atrás dele.\nChegando atrás de uma grnade árvore Neera vê o goblin soltando uma corda. Quando ela olha para o lado vê uma pedra enorme em sua diração."
				escrevaMaquina(truque_Inimigo1, 25)

				cadeia truque_Inimigo2 = "\nNeera consegue por um triz, pular para frente e se livrando da morte certa"
				escrevaMaquina(truque_Inimigo2, 25)
				

				se(valor_defesaInimigo6 <= 0){
					inteiro fim_defesa = valor_vidaInimigo5 - valor_defesaInimigo6
				}

				escreva("\n", valor_defesaInimigo5, "\n", valor_vidaInimigo4, "\n")

			}senao se(resposta == "n" ou resposta == "N"){//pronto
				cadeia InimigoSErende = "O goblin cai no chão e quando ela está prestes a dar a proximo ataque, ele fala que vai se reder.\n"
				escrevaMaquina(InimigoSErende, 25)

				escreva("Você vai acreditar no goblin?")
				escreva("-------------------------\n")
				escreva("| Sim --> s   Não --> n |\n")
				escreva("-------------------------\n")
				leia(resposta)

				se(resposta == "s" ou resposta == "S"){//falta o nao
					cadeia truqueInimigo3 = "Como falado anteriormente os goblins não são confiaveis e tem muitos truques.\nO goblin em um movimento rápido tira uma adaga de sua armadura e crava ela no pé de Neera, fazendo ela cair no chão."
					escrevaMaquina(truqueInimigo3, 25)
					inteiro valor_vidaNeera6 = vida(valor_vidaNeera5, 4, 12)
					inteiro valor_defesaNeera8 = Defesa(valor_defesaNeera7, 4, 12)

				}senao se(resposta != "n" ou  resposta != "N" ou resposta != "s" ou resposta != "S"){
		    			enquanto(resposta != "n" ou  resposta != "N" ou resposta != "s" ou resposta != "S"){
			    			escreva("Resposta inválida! Tente novamente:")
			    			leia(resposta)
	
			    			se(resposta == "s" ou resposta == "S"){
			    				cadeia truqueInimigo3 = "Como falado anteriormente os goblins não são confiaveis e tem muitos truques.\nO goblin em um movimento rápido tira uma adaga de sua armadura e crava ela no pé de Neera, fazendo ela cair no chão."
							escrevaMaquina(truqueInimigo3, 25)
							inteiro valor_vidaNeera6 = vida(valor_vidaNeera5, 4, 12)
							inteiro valor_defesaNeera8 = Defesa(valor_defesaNeera7, 4, 12)
			    			}senao se(resposta == "n" ou resposta == "N"){
			    				
			    			}
			    			
					}
				}
			
			}senao se(resposta != "s" ou  resposta != "S" ou resposta != "n" ou resposta != "N"){
		    		enquanto(resposta != "s" ou  resposta != "S" ou resposta != "n" ou resposta != "N"){
		    			escreva("Resposta inválida! Tente novamente:")
		    			leia(resposta)

		    			se(resposta == "s" ou resposta == "S"){
					 	cadeia ataque_Neera3 = "Neera aproveita que o goblin não está conseguindo se mexer direito e ataca ele algumas vez.\n"
						escrevaMaquina(ataque_Neera3, 25)
						inteiro valor_defesaInimigo5 = Defesa(valor_defesaInimigo4, 5, 22)
						inteiro valor_vidaInimigo4 = vida(valor_vidaInimigo3, 5, 22)
		
						cadeia ataque_Neera4 = "O goblin se defende com dificuldade e tenta atacar Neera, mas ela se defende com facilidade e continua atacando ele.\n"
						escrevaMaquina(ataque_Neera4, 24)
						inteiro valor_defesaInimigo6 = Defesa(valor_defesaInimigo5, 5, 22)
						inteiro valor_vidaInimigo5 = vida(valor_vidaInimigo4, 5, 22)
		
						cadeia truque_Inimigo1 = "O goblin consegue sair correndo com dificuldade para perto de algumas árvores e Neera vai atrás dele.\nChegando atrás de uma grnade árvore Neera vê o goblin soltando uma corda. Quando ela olha para o lado vê uma pedra enorme em sua diração."
						escrevaMaquina(truque_Inimigo1, 25)
		
						cadeia truque_Inimigo2 = "\nNeera consegue por um triz, pular para frente e se livrando da morte certa"
						escrevaMaquina(truque_Inimigo2, 25)
						oi()
		
							se(valor_defesaInimigo6 <= 0){
								inteiro fim_defesa = valor_vidaInimigo5 - valor_defesaInimigo6
							}
		
						escreva("\n", valor_defesaInimigo5, "\n", valor_vidaInimigo4, "\n")
						oi()
		    
		    			}senao se(resposta == "n" ou resposta == "N"){//falta o ataque
				    		cadeia InimigoSErende = "O goblin cai no chão e quando ela está prestes a dar a proximo ataque, ele fala que vai se reder.\n"
						escrevaMaquina(InimigoSErende, 25)
		
						escreva("Você vai acreditar no goblin?")
						escreva("-------------------------\n")
						escreva("| Sim --> s   Não --> n |\n")
						escreva("-------------------------\n")
						leia(resposta)
		
						se(resposta == "s" ou resposta == "S"){//falta o nao
							cadeia truqueInimigo3 = "Como falado anteriormente os goblins não são confiaveis e tem muitos truques.\nO goblin em um movimento rápido tira uma adaga de sua armadura e crava ela no pé de Neera, fazendo ela cair no chão."
							escrevaMaquina(truqueInimigo3, 25)
							inteiro valor_vidaNeera6 = vida(valor_vidaNeera5, 4, 12)
							inteiro valor_defesaNeera8 = Defesa(valor_defesaNeera7, 4, 12)
		
						}senao se(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){
				    			enquanto(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){
					    			escreva("Resposta inválida! Tente novamente:")
					    			leia(resposta)
			
					    			se(resposta == "a" ou resposta == "A"){
					    			}
							}
						}
		  		  	}
				}
			}
		}senao se(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){//se errar ta pronto
		    		enquanto(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){
		    			escreva("Resposta inválida! Tente novamente:")
		    			leia(resposta)

		    			
			se(resposta == "a" ou resposta == "A"){ //pronto
				 	cadeia ataque_Neera2 = "Nerra se prepara para atacar o goblin e corre em sua direção, lhe atacando.\n"
				 	escrevaMaquina(ataque_Neera2, 25)
				 
					cadeia defesaInimigo1 = "Ele leva o ataque, mas como estava de armadura o ataque foi minimizado.\n\n"
					escrevaMaquina(defesaInimigo1, 25)
					inteiro valor_defesaInimigo2 = Defesa(valor_defesaInimigo1, 5, 15)
		
					cadeia ataque_Inimigo2 = "Os goblins são conhecidos por serem traiçoeiros e usarem muitos truques.\nE ele não é diferente dos outros, ele tira algumas lâminas com veneno de sua armadura e joga na direção de Neera.\nComo Nerra não esperava o ataque das lâminas, ela é ferida."
					escrevaMaquina(ataque_Inimigo2, 25)
					inteiro valor_vidaNeera2 = vida(valor_vidaNeera1, 4, 15)
					inteiro valor_defesaNeera2 = Defesa(valor_defesaNeera1, 4, 15)
		
					escreva("\n\nVocê deseja esperar para se defender dos próximos truques do goblin ou deseja atacar? \n")
					escreva("------------------\n")
				 	escreva("| Defender --> d |\n")
				 	escreva("| Atacar --> a   |\n")
				    	escreva("------------------\n")
				    	leia(resposta)
				    	escreva("\n")
		
				    
				    	se(resposta == "d" ou resposta == "D"){//pronto
				    		cadeia defesaNeera1 = "Neera para e espera para ver se o goblin tem mais algum truque. O goblin vê uma brecha na guarda de Neera e corre em sua direção.\nMas Neera abaixou a guarda de proposito, ela se defende."
				    		inteiro valor_defesaNeera3 = Defesa(valor_defesaNeera2, 4, 12)
				    		//\nMas Neera abaixou a guarda de proposito, ela se defende e rapidamente dá um golpe no braço do goblin, em uma parte que a armadura não cobria perfeitamente."
				    		escrevaMaquina(defesaNeera1, 25)
		
				    		cadeia ataqueNeera4 = ""
		
				    		inteiro valor_defesaInimigo3 = Defesa(valor_defesaInimigo2, 5, 15)
				    		inteiro valor_vidaInimigo2 = vida(valor_vidaInimigo1, 5, 15)
		
				    		cadeia vc = "klop"
		
				    		escreva("\n", valor_defesaNeera3, "\n",valor_defesaInimigo3, "\n", valor_vidaInimigo2, "\n", valor_defesaInimigo3, "\n\n")
				    		
				    	}senao se(resposta == "a" ou resposta == "A"){//pronto
				    		cadeia ataque_Neera5 = "Nerra avança para atacar o goblin. Mas ela está fraca por causa do veneno. E o goblin a ataca"
				    		escrevaMaquina(ataque_Neera5, 25)
				    		
				    	}senao se(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){//se errar ta pronto
				    		enquanto(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){
				    			escreva("Resposta inválida! Tente novamente:")
				    			leia(resposta)
		
				    			se(resposta == "a" ou resposta == "A"){
				    				cadeia ataque_Neera5 = "Nerra avança para atacar o goblin. Mas ela está fraca por causa do veneno. E o goblin a ataca"
				    				escrevaMaquina(ataque_Neera5, 25)
							
							}senao se(resposta == "d" ou resposta == "D"){
								cadeia defesaNeera1 = "Neera para e espera para ver se o goblin tem mais algum truque. O goblin vê uma brecha na guarda de Neera e corre em sua direção.\nMas Neera abaixou a guarda de proposito, ela se defende."
						    		inteiro valor_defesaNeera3 = Defesa(valor_defesaNeera2, 4, 12)
						    		//\nMas Neera abaixou a guarda de proposito, ela se defende e rapidamente dá um golpe no braço do goblin, em uma parte que a armadura não cobria perfeitamente."
						    		escrevaMaquina(defesaNeera1, 25)
				
						    		cadeia ataqueNeera4 = ""
				
						    		inteiro valor_defesaInimigo3 = Defesa(valor_defesaInimigo2, 5, 15)
						    		inteiro valor_vidaInimigo2 = vida(valor_vidaInimigo1, 5, 15)
				
						    		cadeia vc = "klop"
								}//fim do se errar
				    		}
				}
					senao se(resposta == "d" ou resposta == "D"){//pronto
						cadeia defesaNeera2 = "Depois de levar o ataque do goblin a Neera espera ele atacar novamente. Assim ela se defende do ataque usando a armadura do braço como escudo."
						escrevaMaquina(defesaNeera2, 25)
						inteiro valor_defesaNeera4 = Defesa(valor_defesaInimigo1, 4, 12)
						inteiro valor_vidaNeera4 = vida(valor_vidaNeera1, 4, 12)
						
						cadeia ataque_Inimigo3 = "\nMas o goblin agi rápido e acerta ela novemente. Fazendo ela bater em uma árvore.\n"
						inteiro valor_defesaNeera5 = Defesa(valor_defesaNeera4, 4, 12)
						inteiro valor_defesaNeera6 = Defesa(valor_defesaNeera5, 4, 12)
						inteiro valor_vidaNeera5 = vida(valor_vidaNeera4, 4, 12)
			
						cadeia defesaNeera3 = "O goblin corre na direção da Neera e tenta atacar ela, mas ela bloqueia o ataque dele."
						escreva(defesaNeera3, 25)
						inteiro valor_defesaNeera7 = Defesa(valor_defesaNeera6, 4, 12)
			
						cadeia ataque_Neera02 = "\nLogo após bloquear o ataque do goblin, ela acerta um golpe em seu joelho.\nO goblin fica com um pouco de difuculdade para andar.\n"
						escrevaMaquina(ataque_Neera2, 25)
						inteiro valor_defesaInimigo4 = Defesa(valor_defesaInimigo1, 5, 15)
						inteiro valor_vidaInimigo3 = vida(valor_vidaInimigo1, 5, 15)
			
						escreva("\nDeseja continuar atacando?\n")
						escreva("-------------------------\n")
						escreva("| Sim --> s   Não --> n |\n")
						escreva("-------------------------\n")
						leia(resposta)
			
						se(resposta == "s" ou resposta == "S"){ //pronto
							cadeia ataque_Neera3 = "Neera aproveita que o goblin não está conseguindo se mexer direito e ataca ele algumas vez.\n"
							escrevaMaquina(ataque_Neera3, 25)
							inteiro valor_defesaInimigo5 = Defesa(valor_defesaInimigo4, 5, 22)
							inteiro valor_vidaInimigo4 = vida(valor_vidaInimigo3, 5, 22)
			
							cadeia ataque_Neera4 = "O goblin se defende com dificuldade e tenta atacar Neera, mas ela se defende com facilidade e continua atacando ele.\n"
							escrevaMaquina(ataque_Neera4, 24)
							inteiro valor_defesaInimigo6 = Defesa(valor_defesaInimigo5, 5, 22)
							inteiro valor_vidaInimigo5 = vida(valor_vidaInimigo4, 5, 22)
			
							cadeia truque_Inimigo1 = "O goblin consegue sair correndo com dificuldade para perto de algumas árvores e Neera vai atrás dele.\nChegando atrás de uma grnade árvore Neera vê o goblin soltando uma corda. Quando ela olha para o lado vê uma pedra enorme em sua diração."
							escrevaMaquina(truque_Inimigo1, 25)
			
							cadeia truque_Inimigo2 = "\nNeera consegue por um triz, pular para frente e se livrando da morte certa"
							escrevaMaquina(truque_Inimigo2, 25)
							
			
							se(valor_defesaInimigo6 <= 0){
								inteiro fim_defesa = valor_vidaInimigo5 - valor_defesaInimigo6
							}
			
							escreva("\n", valor_defesaInimigo5, "\n", valor_vidaInimigo4, "\n")
			
						}senao se(resposta == "n" ou resposta == "N"){//pronto
							cadeia InimigoSErende = "O goblin cai no chão e quando ela está prestes a dar a proximo ataque, ele fala que vai se reder.\n"
							escrevaMaquina(InimigoSErende, 25)
			
							escreva("Você vai acreditar no goblin?")
							escreva("-------------------------\n")
							escreva("| Sim --> s   Não --> n |\n")
							escreva("-------------------------\n")
							leia(resposta)
			
							se(resposta == "s" ou resposta == "S"){//falta o nao
								cadeia truqueInimigo3 = "Como falado anteriormente os goblins não são confiaveis e tem muitos truques.\nO goblin em um movimento rápido tira uma adaga de sua armadura e crava ela no pé de Neera, fazendo ela cair no chão."
								escrevaMaquina(truqueInimigo3, 25)
								inteiro valor_vidaNeera6 = vida(valor_vidaNeera5, 4, 12)
								inteiro valor_defesaNeera8 = Defesa(valor_defesaNeera7, 4, 12)
			
							}senao se(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){
					    			enquanto(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){
						    			escreva("Resposta inválida! Tente novamente:")
						    			leia(resposta)
				
						    			se(resposta == "a" ou resposta == "A"){
						    			}
								}
							}
						
						}senao se(resposta != "s" ou  resposta != "S" ou resposta != "n" ou resposta != "N"){
					    		enquanto(resposta != "s" ou  resposta != "S" ou resposta != "n" ou resposta != "N"){
					    			escreva("Resposta inválida! Tente novamente:")
					    			leia(resposta)
			
					    			se(resposta == "s" ou resposta == "S"){
								 	cadeia ataque_Neera3 = "Neera aproveita que o goblin não está conseguindo se mexer direito e ataca ele algumas vez.\n"
									escrevaMaquina(ataque_Neera3, 25)
									inteiro valor_defesaInimigo5 = Defesa(valor_defesaInimigo4, 5, 22)
									inteiro valor_vidaInimigo4 = vida(valor_vidaInimigo3, 5, 22)
					
									cadeia ataque_Neera4 = "O goblin se defende com dificuldade e tenta atacar Neera, mas ela se defende com facilidade e continua atacando ele.\n"
									escrevaMaquina(ataque_Neera4, 24)
									inteiro valor_defesaInimigo6 = Defesa(valor_defesaInimigo5, 5, 22)
									inteiro valor_vidaInimigo5 = vida(valor_vidaInimigo4, 5, 22)
					
									cadeia truque_Inimigo1 = "O goblin consegue sair correndo com dificuldade para perto de algumas árvores e Neera vai atrás dele.\nChegando atrás de uma grnade árvore Neera vê o goblin soltando uma corda. Quando ela olha para o lado vê uma pedra enorme em sua diração."
									escrevaMaquina(truque_Inimigo1, 25)
					
									cadeia truque_Inimigo2 = "\nNeera consegue por um triz, pular para frente e se livrando da morte certa"
									escrevaMaquina(truque_Inimigo2, 25)
									
					
										se(valor_defesaInimigo6 <= 0){
											inteiro fim_defesa = valor_vidaInimigo5 - valor_defesaInimigo6
										}
					
									escreva("\n", valor_defesaInimigo5, "\n", valor_vidaInimigo4, "\n")
			
					    
					    			}senao se(resposta == "n" ou resposta == "N"){//falta o ataque
							    		cadeia InimigoSErende = "O goblin cai no chão e quando ela está prestes a dar a proximo ataque, ele fala que vai se reder.\n"
									escrevaMaquina(InimigoSErende, 25)
					
									escreva("Você vai acreditar no goblin?")
									escreva("-------------------------\n")
									escreva("| Sim --> s   Não --> n |\n")
									escreva("-------------------------\n")
									leia(resposta)
					
									se(resposta == "s" ou resposta == "S"){//falta o nao
										cadeia truqueInimigo3 = "Como falado anteriormente os goblins não são confiaveis e tem muitos truques.\nO goblin em um movimento rápido tira uma adaga de sua armadura e crava ela no pé de Neera, fazendo ela cair no chão."
										escrevaMaquina(truqueInimigo3, 25)
										inteiro valor_vidaNeera6 = vida(valor_vidaNeera5, 4, 12)
										inteiro valor_defesaNeera8 = Defesa(valor_defesaNeera7, 4, 12)
					
									}senao se(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){
							    			enquanto(resposta != "a" ou  resposta != "A" ou resposta != "d" ou resposta != "D"){
								    			escreva("Resposta inválida! Tente novamente:")
								    			leia(resposta)
						
								    			se(resposta == "a" ou resposta == "A"){
								    			}
										}
									}
					  		  	}
							}
						}
					}
					}
					    		}
					}
				}

	funcao defenderPrimeiroInimigo(){
		cadeia defesaNeera1 = "Neera espera o goblin atacar, assim ela bloqueia o ataque com a sua espada.\nO goblin vai para longe pela força do impacto de suas espadas. Neera corre na diração dele, pulando e atacando ele por cima."
		escrevaMaquina(defesaNeera1, 25)
		inteiro Valor_DefesaNeera1 = Defesa(80, 4, 12)
		inteiro Valor_VidaInimigo1 = vida(80, 5, 15)
		inteiro Valor_DefesaInimigo1 = Defesa(80, 5, 15)

		//inteiro Defesa_Neera = Defesa(80) - Ataque_Inimigo //defesa de Neera depois do ataque inimigo

		//cadeia 

		
		
	}

	funcao contexto_primeiraBatalha(){
		limpa()
		cadeia resposta1
		cadeia procuraPrincipe = "Depois da conversa que teve com o rei, a Neera pega seu cavalo e vai para a floresta atrás do princípe.\n"
		escrevaMaquina(procuraPrincipe, 25)

		escreva("\nDeseja ver o status de Neera?\n")
		escreva("-------------------------\n")
		escreva("| Sim --> s   Não --> n |\n")
		escreva("-------------------------\n")
		leia(resposta1)
		u.aguarde(500)

		se(resposta1 == "s" ou resposta1 == "S"){
			escreva("\n")
			status(100, 5, 13, "Neera", 80)
		}
		senao se(resposta1 == "n" ou resposta1 == "N"){
			escreva("Ok, vamos continuar com a história.")
		}

		u.aguarde(500)

		cadeia ChegaFloresta = "\nChegando lá, a floresta é densa, e os raios de sol mal atravessam as copas das grandes árvores. Neera avança devagar com seu cavalo"
		escrevaMaquina(ChegaFloresta, 25)

		cadeia suspense1 = "."
		escrevaMaquina(suspense1, 1000)
		cadeia suspense2 = "."
		escrevaMaquina(suspense2, 1000)
		cadeia suspense3 = "."
		escrevaMaquina(suspense3, 1000)

		cadeia meioCaminho = "\nQuando ela chega no meio da floresta, um goblin aparece no meio do caminho, não deixando ela passar.\n(Ele é cumplice do dragão.)"
		escrevaMaquina(meioCaminho, 25)
		
		escreva("             ,      ,\n")
		escreva("            /(.-\"\"-.)\\\n")
		escreva("        |\\  \\/      \\/  /|\n")
		escreva("        | \\ / =.  .= \\ / |\n")
		escreva("        \\( \\   o\\/o   / )/\n")
		escreva("         \\_, '-/  \\-' ,_/\n")
		escreva("           /   \\__/   \\\n")
		escreva("           \\ \\__/\\__/ /\n")
		escreva("         ___\\ \\|--|/ /___\n")
		escreva("       /`    \\      /    `\\\n")
		escreva("      /       '----'       \\\n")
		escreva("     /    \\           /     \\\n")
		escreva("    (      )         (       )\n")
		escreva("     \\____/           \\_____/\n")


		cadeia luta_parte1 = "Nerra desce do cavalo e empunha a sua espada.\n"
		escrevaMaquina(luta_parte1, 25)
		u.aguarde(1500)

		escreva("\n\n       /\\", "\n")
		escreva("      ||||\n")
		escreva("      ||||\n")
		escreva("      ||||\n")
		escreva("      ||||\n")
		escreva("      ||||\n")
		escreva("      ||||\n")
		escreva("      ||||\n")
		escreva("      ||||\n")
		escreva("     [====]\n")
		escreva("  ___||__||___\n")
		escreva(" |            | ", "\n")
		escreva(" |____________| ", "\n")
		escreva("     | | |\n")
		escreva("     | | |\n")
		escreva("     | | |\n")
		escreva("     | | |\n")
		escreva("     |_|_|\n")
		escreva("    (_____)\n")
		u.aguarde(2500)

		limpa()

		cadeia luta_parte2 = "\n\nO goblin começa a correr na direção da Neera.\n\n"
		escrevaMaquina(luta_parte2, 25)

		status(80, 4, 10 , "Goblin", 60)

		cadeia resposta2 = "h"
		defender_atacar(resposta2)

	}

	funcao oi(){
		escreva("oii")
	}

}
