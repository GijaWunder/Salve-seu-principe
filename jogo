programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u

	
	funcao inicio()
	{
		cadeia resposta

		escreva("███████╗ █████╗ ██╗    ██╗   ██╗███████╗    ███████╗███████╗██╗   ██╗    ██████╗ ██████╗ ██╗███╗   ██╗ ██████╗██╗██████╗ ███████╗\n")
   		escreva("██╔════╝██╔══██╗██║    ██║   ██║██╔════╝    ██╔════╝██╔════╝██║   ██║    ██╔══██╗██╔══██╗██║████╗  ██║██╔════╝██║██╔══██╗██╔════╝\n")
   		escreva("███████╗███████║██║    ██║   ██║█████╗      ███████╗█████╗  ██║   ██║    ██████╔╝██████╔╝██║██╔██╗ ██║██║     ██║██████╔╝█████╗  \n")
   		escreva("╚════██║██╔══██║██║    ╚██╗ ██╔╝██╔══╝      ╚════██║██╔══╝  ██║   ██║    ██╔═══╝ ██╔══██╗██║██║╚██╗██║██║     ██║██╔═══╝ ██╔══╝  \n")
   		escreva("███████║██║  ██║███████╗╚████╔╝ ███████╗    ███████║███████╗╚██████╔╝    ██║     ██║  ██║██║██║ ╚████║╚██████╗██║██║     ███████╗\n")
   		escreva("╚══════╝╚═╝  ╚═╝╚══════╝ ╚═══╝  ╚══════╝    ╚══════╝╚══════╝ ╚═════╝     ╚═╝     ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝╚═╝╚═╝     ╚══════╝\n")

		escreva("\n", "\n")

		u.aguarde(3000)
		
		cadeia narrador = "Olá jogador! Eu sou o narrador, você esta pronto para se torna a poderosa guerreira Neera?\n"
		escrevaMaquina(narrador, 25)
		escreva("------------------------\n")
		escreva(" sim --> s   não --> n \n")
		escreva("------------------------\n")
		
		escolhaJogador()
		
	}

	
	funcao escrevaMaquina(cadeia texto, inteiro velocidade){ // escrita dos textos

		para(inteiro i=0; i < t.numero_caracteres(texto); i++){
		escreva(t.obter_caracter(texto, i))
		u.aguarde(velocidade)
	}
}

	funcao escolhaJogador(){ // escolhe se vai começar o jogo
		cadeia respostaJogador
		leia(respostaJogador)

		se(respostaJogador == "n" ou respostaJogador == "N"){
			cadeia nao_esta_proto = "Que pena! Talvez você esteja pronto(a) na proxima."
			escrevaMaquina(nao_esta_proto, 25)

		}

		se(respostaJogador == "s" ou respostaJogador == "S"){
			inicioJogo()
		}

	}


	funcao inicioJogo(){ // contextualizando a história do jogo e decorre

		limpa()
		cadeia contexto1 = "Em um dia como qualquer outro. A poderosa guerreira Neera, muito conhecida no reino de Galad pelos seus grandes feitos. Escuta um bater de asas alto vindo do céu.\n"
		escrevaMaquina(contexto1, 25)
		
		cadeia contexto2 = "Quando ela olha para cima avista um grande dragão da Floresta dos Sussuros voando e fugindo de flexas, segurando algo em suas garras.\n"
		escrevaMaquina(contexto2, 25)
		
		cadeia contexto3 = "Curiosa pelo motivo do dragão estar voando por cima do reino. A Neera decide ir até o castelo do rei"
		escrevaMaquina(contexto3, 25)

		
		cadeia suspense1 = "."
		escrevaMaquina(suspense1, 1000)
		cadeia suspense2 = "."
		escrevaMaquina(suspense2, 1000)
		cadeia suspense3 = "."
		escrevaMaquina(suspense3, 1000)
		escreva("\n", "\n")
		
		cadeia contexto4 = "Chegando no grande portão do castelo, Neera avista o rei e alguns soltados agitados. O rei percebe a sua presensa e chama ela.\n"
		escrevaMaquina(contexto4, 25)

		cadeia contexto5 = "Ele pede ajuda para Neera salvar o seu filho Idris o atual principe de Galad, das garras do dragão.\n"
		escrevaMaquina(contexto5, 25)


		
		cadeia fala1 = "Rei Mirk: Guerreira Neera! preciso de você agora.\n" // parte do Rex
		escrevaMaquina(fala1, 25)
		
		cadeia fala2 = "Neera: Magestade o que houve?\n" // parte do Rex
		escrevaMaquina(fala2, 25)
		
		
		cadeia fala3 = "Rei Mirk: O meu filho foi levado pelo poderoso dragão. Você pode ir salva-lo?" // parte do Rex
		escrevaMaquina(fala3, 25)
		escreva("\n")
		
		
		escreva("------------------------\n")
		escreva(" sim --> s   não --> n \n")
		escreva("------------------------\n")
		
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
			
			game_over(1500)
	
			
		}
	}

	funcao game_over(inteiro esperar){
		u.aguarde(esperar)

		escreva(" ██████╗  █████╗ ███╗   ███╗███████╗     ██████╗ ██╗   ██╗███████╗██████╗ ")
   		escreva("\n██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔═══██╗██║   ██║██╔════╝██╔══██╗")
  		escreva("\n██║  ███╗███████║██╔████╔██║█████╗      ██║   ██║██║   ██║█████╗  ██████╔╝")
  		escreva("\n██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗")
   		escreva("\n╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ╚██████╔╝ ╚████╔╝ ███████╗██║  ██║")
   		escreva("\n ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝     ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝")
   		
	}

	funcao dano(inteiro minimo, inteiro maximo){
		u.sorteia(minimo, maximo)
	}

	funcao inteiro ataque(inteiro minimo, inteiro maximo){
		inteiro ataques = u.sorteia(minimo, maximo)

		retorne ataques
	}

	funcao status_Neera(){
		inteiro vida = 100
		
	}

	funcao vida_Neera(inteiro vida){
		vida = 100
	}

	funcao vida_inimigo(inteiro vida){
		escreva("oii")
	}

	funcao defender_atacar(inteiro resposta){
		escreva("\n")
		cadeia defesaOUataque = "Você deseja defender ou atacar?\n"
		escrevaMaquina(defesaOUataque, 25)
		escreva("(1) Defender\n")
		escreva("(2) Atacar\n")
	}

	funcao contexto_primeiraBatalha(){
		limpa()
		cadeia procuraPrincipe = "Depois da conversa que teve com o rei, a Neera pega seu cavalo e vai para a floresta atrás do princípe.\n"
		escrevaMaquina(procuraPrincipe, 25)

		cadeia meioCaminho = "Chegando no meio da floresta, ela é ataca por um goblin.\n"
		escrevaMaquina(meioCaminho, 25)

		//desenho do goblin

		cadeia luta_parte1 = "Nerra desce do cavalo e empunha a sua espada.\n"
		escrevaMaquina(luta_parte1, 25)

		//desenho espada

		cadeia luta_parte2 = "O goblin começa a correr na direção da Neera.\n"
		escrevaMaquina(luta_parte2, 25)

		batalhar()
		
	}

	funcao batalhar(){

		inteiro Resposta = 0
		defender_atacar(Resposta)
		leia(Resposta)
		
			
		escolha(Resposta){

			caso 1: enquanto (Resposta == 1){
				escreva("Nerra se defende e não sofre danos. Mas o goblin também não sofre danos.\n")
				defender_atacar(Resposta)
				leia(Resposta)
			}
				  
				   
			pare
			caso 2: cadeia atacar = "Neera ataca o goblin e ele sofre "
				   escrevaMaquina(atacar, 25)
				   ataque(2, 15)
				   
			pare
			caso contrario: enquanto(Resposta != 1 ou Resposta != 2){
				escreva ("Resposta inválida. Tente novamente:")
				leia(Resposta)
			}
			pare
		
		}
	}
}
