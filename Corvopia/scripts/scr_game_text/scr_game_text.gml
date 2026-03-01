// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_text(_text_id){
	switch(_text_id){
		
		case "lisa school cattalk":
				
		dialogue_text("E aí, [c_fuchsia]Yumi![/c] Tudo suave com você? Aulinha puxada, hein? Cálculo II não é pra qualquer um...","L");
		dialogue_option("* Eu te conheço?", "cattalk - 2");
		dialogue_option("* Bom dia...", "cattalk - 1");
		break;
		
		case "cattalk - 1":
		dialogue_text("A gente não conversou muito na primeira semana de aula, meu nome é [c_orange]Lisa![c_orange]","L");
		dialogue_text("Eu sei que é meio repentino e que a gente mal se conhece...","Lisa");
		dialogue_text("Mas eu preciso urgentemente te pedir um favor...","Lisa");
		dialogue_text("Você viu o [c_aqua]Akira?[/c]","Lisa");
		dialogue_option("* ...", "Akira");
		dialogue_option("* Akira...?", "Akira");
		break;
		
		case "cattalk - 2":
		dialogue_text("Nossa, já se esqueceu de mim?","L");
		dialogue_text("Tudo bem, a gente não conversou muito na primeira semana de aula, né? meu nome é [c_orange]Lisa![c_orange]","L");
		dialogue_text("Eu sei que é meio repentino e que a gente mal se conhece...","Lisa");
		dialogue_text("Mas eu preciso urgentemente te pedir um favor...","Lisa");
		dialogue_text("Você viu o [c_aqua]Akira?[/c]","Lisa");
		dialogue_option("* ...", "Akira");
		dialogue_option("* Akira...?", "Akira");
		break;
		
		case "Akira":
		dialogue_text("Eu te mostrei uma foto dele ontem, não se lembra?","Lisa");
		dialogue_text("É o meu gato, ele se perdeu de casa...","Lisa");
		dialogue_text("Ele é branco e cinza, você o viu em algum lugar?","Lisa");
		dialogue_option("* Não sei...", "Akira - 2");
		dialogue_option("* Acho que vi!", "Akira - 1");
		break;
		
		case "Akira - 1":
		dialogue_text("[wave]SÉRIO??[/wave] por favor, se você encontrá-lo, me avisa!!","Lisa");
		dialogue_text("Eu também vou procurar, mas sabe como é, quanto mais gente procurando, melhor!","Lisa");
		dialogue_event[0] = "akira 2";
		dialogue_event[1] = page_number;
		dialogue_text("Espero encontrá-lo rápido... quem sabe como ele estará daqui uma semana...","Lisa");
		break;
		
		case "Akira - 2":
		dialogue_text("... por favor, se você encontrá-lo, me avisa?","Lisa");
		dialogue_text("Eu também vou procurar, mas sabe como é, quanto mais gente procurando, melhor!","Lisa");
		dialogue_event[0] = "akira 2";
		dialogue_event[1] = page_number;
		dialogue_text("Espero encontrá-lo rápido... quem sabe como ele estará daqui uma semana...","Lisa");
		break;
		
		case "lisa school 1":
		dialogue_text("E aí, Yumi! Tudo suave?","Lisa");
		dialogue_text("Topa dar um rolê?","Lisa");
		dialogue_text("Sair com [c_orange]Lisa[/c] fará o tempo passar...","Lisa");
		dialogue_text("E aí, topa?","Lisa");
		dialogue_option("* Vambora", "lisa school 1 - social link");
		dialogue_option("* Me deixa pensar", "lisa school 1 - recusar");
		break;
		
		
		
		
		
		
		
		
		case "lisa school 1 - social link":
		dialogue_event[0] = "social link";
		dialogue_event[1] = page_number;
		dialogue_text("Salve, [c_fuchsia]Yumi[/c]! Topa dar um rolê no [c_yellow]parque[/c]?", "Lisa");
		dialogue_text("* Parece que se eu sair com a [c_orange]Lisa[/c], meus [c_yellow]atributos[/c] melhorarão...", "");
		dialogue_text("* Sair com [c_orange]Lisa[/c]?", "");
		dialogue_option("Não", "nothing");
		dialogue_option("Sim", "parque");
		break;
		
		case "lisa school 2 - social link":
		dialogue_event[0] = "social link";
		dialogue_event[1] = page_number;
		dialogue_text("Salve, [c_fuchsia]Yumi[/c]! Tá ocupado?", "Lisa");
		dialogue_text("* Parece que se eu sair com a [c_orange]Lisa[/c], meus [c_yellow]atributos[/c] melhorarão...", "");
		dialogue_text("* Sair com [c_orange]Lisa[/c]?", "");
		dialogue_option("Não", "nothing");
		dialogue_option("Sim", "parque2");
		break;
		
		case "lisa school 3 - social link":
		dialogue_event[0] = "social link";
		dialogue_event[1] = page_number;
		dialogue_text("Ei, tou meio preocupada... Topa sair pra espairecer?", "Lisa");
		dialogue_text("* Parece que se eu sair com a [c_orange]Lisa[/c], meus [c_yellow]atributos[/c] melhorarão...", "");
		dialogue_text("* Sair com [c_orange]Lisa[/c]?", "");
		dialogue_option("Não", "nothing");
		dialogue_option("Sim", "parque3");
		break;
		
		case "parque":
		dialogue_event[0] = "parque";
		dialogue_event[1] = page_number;
		dialogue_text("Nice! Vambora!", "Lisa");
		break;
		
		case "parque2":
		dialogue_event[0] = "parque";
		dialogue_event[1] = page_number;
		dialogue_text("[wave]Lesgou![wave]", "Lisa");
		break;
		
		case "parque3":
		dialogue_event[0] = "parque";
		dialogue_event[1] = page_number;
		dialogue_text("Vamos...", "Lisa");
		break;
	
		case "park3 1":
		dialogue_text("Eu tou meio preocupada com o [c_aqua]Akira[/c], já faz um tempão que eu não vejo ele...", "Lisa");
		dialogue_text("Sei que ele é um gato esperto, mas ainda me preocupo...", "Lisa");
		dialogue_text("E pensar que tudo isso aconteceu depois dele ter caçado aquele [c_blue]corvo[/c]...", "Lisa");
		dialogue_text("Eu tomei um [shake]susto[shake], ele trouxe um corvo morto pra minha cama!", "Lisa");
		dialogue_text("Aparentemente é comum gatos fazerem isso...", "Lisa");
		dialogue_option("...", "park3 2");
		dialogue_option("Assustador", "park3 3");
		break;
		
		case "park3 2":
		dialogue_text("* Eu fiquei em silêncio", "");
		break;
		
		case "park3 3":
		dialogue_text("* Após falar pra [c_orange]Lisa[/c] que tá tudo bem em sentir medo...", "");
		dialogue_text("* Me sinto mais forte!", "");
		dialogue_text("[c_gray](Sua [/c][c_orange]força[/c][c_gray] aumentou!)[/c]", "");
		dialogue_event[0] = "força";
		dialogue_event[1] = page_number;
		dialogue_text("A saudade é engraçada, né?", "Lisa");
		dialogue_text("O ser humano é realmente ingrato. Só valorizamos o que perdemos..", "Lisa");
		dialogue_text("* A ânsia de ter e o tédio de possuir...", "");
		dialogue_text("Você já perdeu alguém importante, [c_fuchsia]Yumi[/c]?", "Lisa");
		dialogue_option("Não", "park3 4");
		dialogue_option("Sim", "park3 4");
		break;
		
		case "park3 4":
		dialogue_event[0] = "go to home";
		dialogue_event[1] = page_number;
		dialogue_text("É curioso isso, sabe, eu não tenho medo da morte", "Lisa");
		dialogue_text("Eu percebo que a morte é só mais uma etapa da nossa existência", "Lisa");
		dialogue_text("Mas isso muda quando a gente pensa nas pessoas na nossa volta...", "Lisa");
		dialogue_text("É bem mais difícil...", "Lisa");
		dialogue_text("* Após conversar sobre temas profundos com [c_orange]Lisa[/c], você voltou pra casa.", "");
		dialogue_text("Obrigada pela conversa!!", "Lisa");
		break;
		
		case "park2 1":
		dialogue_text("Caaaaaaara, tou viciada num [wave][rainbow]anime[rainbow][wave]", "Lisa");
		dialogue_text("O nome dele é [c_fuchsia]Cáuboi Belop[/c]", "Lisa");
		dialogue_text("Você conhece?", "Lisa");
		dialogue_option("Não", "park2 2");
		dialogue_option("Adoro!", "park2 3");
		break;
		

		
		case "park2 2":
		dialogue_event[0] = "go to home";
		dialogue_event[1] = page_number;
		dialogue_text("* Parece que minha resposta não deixou [c_orange]Lisa empolgada...[/c]", "");
		dialogue_text("[shake]POIS ASSISTA! É TIPO MUITO BOM!!![shake]", "Lisa");
		dialogue_text("É sobre caubóis do espaço que procuram procurados...", "Lisa");
		dialogue_text("Só que eles tem histórias de vida super dramáticas!", "Lisa");
		dialogue_text("Mas o anime é bem engraçado também...", "Lisa");
		dialogue_text("Tipo, não é como esses animes da atualidade, esse é bem [wave]cult[wave]", "Lisa");
		dialogue_text("E tem uma trilha sonora MUITO boa!! Bastante [wave]jazz e blues!!!![wave]", "Lisa");
		dialogue_text("* Ela ficou falando sobre esse anime por uns bons minutos...", "");
		dialogue_text("* Você decidiu voltar pra casa", "");
		break;
		
		case "park2 3":
		dialogue_text("[shake][wave][rainbow]É MUUUUUUUUITO BOM!!1!!11![rainbow][wave][shake]", "Lisa");
		dialogue_text("* Parece que minha resposta agradou [c_orange]Lisa[/c]!", "");
		dialogue_text("[c_gray](Sua [/c][c_lime]velocidade[/c][c_gray] aumentou!)[/c]", "");
		dialogue_event[0] = "spd";
		dialogue_event[1] = page_number;
		dialogue_text("Meu personagem favorito é a [wave][c_fuchsia]Edwarda[/c][wave]", "Lisa");
		dialogue_option("E o Spine?", "park2 4");
		dialogue_option("Legal!", "park2 4");
		break;
		
		case "park2 4":
		dialogue_event[0] = "go to home";
		dialogue_event[1] = page_number;
		dialogue_text("* Ela ficou falando sobre esse anime por uns bons minutos...", "");
		dialogue_text("* Você decidiu voltar pra casa", "");
		dialogue_text("See ya, [wave]space cowboy!![wave]", "Lisa");
		break;
		
		
		
		case "park 1":
		dialogue_text("Então, tem alguma notícia do [c_aqua]Akira[/c]?", "Lisa");
		dialogue_option("Não...", "park 2");
		dialogue_option("Ainda não", "park 2");
		break;
		
		case "park 2":
		dialogue_text("Tendi... Ainda tou procurando ele..", "Lisa");
		dialogue_text("Espero que ele esteja bem", "Lisa");
		dialogue_text("Ah, e foi mal se eu pareci meio egoísta quando te pedi pra procurar ele", "Lisa");
		dialogue_text("É que eu realmente tou preocupada", "Lisa");
		dialogue_option("Entendo.", "park 4");
		dialogue_option("De boa!", "park 3");
		break;
		
		case "park 3":
		dialogue_event[0] = "vida";
		dialogue_event[1] = page_number;
		dialogue_text("* Eu disse pra Lisa que eu estou disposto a ajudá-la", "");
		dialogue_text("* Eu senti certo agradecimento no sorriso dela", "");
		dialogue_text("[c_gray](Sua [/c][c_red]vida máxima[/c][c_gray] aumentou!)[/c]", "");
		dialogue_text("[wave]Muuuito obrigada!![/wave]", "Lisa");
		dialogue_text("Não sei o que me estressa mais, isso ou a prova da semana que vem...", "Lisa");
		dialogue_text("Você vem estudando?", "Lisa");
		dialogue_option("Nah", "park 5");
		dialogue_option("Sim", "park 6");
		break;
		
		case "park 4":
		dialogue_text("* Parece que minha resposta foi fria demais...", "");
		dialogue_text("Não sei o que me estressa mais, isso ou a prova da semana que vem...", "Lisa");
		dialogue_text("Você vem estudando?", "Lisa");
		dialogue_option("Nah", "park 5");
		dialogue_option("Sim", "park 6");
		break;
		
		case "park 5":
		dialogue_event[0] = "go to home";
		dialogue_event[1] = page_number;
		dialogue_text("É, eu também não... tou sem cabeça pra isso agora...", "Lisa");
		dialogue_text("* Já está ficando tarde, e você decidiu voltar pra casa", "");
		break;
		
		case "park 6":
		dialogue_event[0] = "go to home";
		dialogue_event[1] = page_number;
		dialogue_text("Caramba, como você consegue??", "Lisa");
		dialogue_text("Tipo, a gente mal tem tempo pra fazer coisas fora da faculdade....", "Lisa");
		dialogue_text("Ou talvez eu desperdice muitas horas jogando.........", "Lisa");
		dialogue_text("* Já está ficando tarde, e você decidiu voltar pra casa", "");
		dialogue_text("Até amanhã!", "Lisa");
		break;
		
		
		
		
		case "lisa school 1 - recusar":
		dialogue_event[0] = "social link";
		dialogue_event[1] = page_number;
		dialogue_text("É isso aí!");
		break;
		
		case "door closed":
		dialogue_text("Parece que [c_orange]aquela garota[/c] está me chamando...");
		break;
		
		case "door open":
		dialogue_text("Voltar pra casa?");
		dialogue_option("* Me deixa pensar", "nothing");
		dialogue_option("* Voltar pra casa", "home");
		break;
		
		case "exithome":
		dialogue_text("Ir para a Faculdade?");
		dialogue_option("* Me deixa pensar", "nothing");
		dialogue_option("* Ir", "facul");
		break;
		
		case "facul":
		dialogue_event[0] = "go to facul";
		dialogue_event[1] = page_number;
		dialogue_text("* Você decidiu ir à Faculdade.");
		break;
		
		case "home":
		dialogue_event[0] = "go to home";
		dialogue_event[1] = page_number;
		dialogue_text("* Você decidiu voltar pra casa.");
		break;
		
		case "gate!":
		dialogue_event[0] = "* Você e Corvit entraram";
		dialogue_event[1] = page_number;
		dialogue_text(" Você e Corvit entraram");
		break;
		
		case "nothing":
		dialogue_event[0] = "destroy";
		dialogue_event[1] = page_number;
		dialogue_text("* Você decidiu voltar pra casa.");
		break;
		
		case "kitty":
		dialogue_text("* É um gato. Ele está dormindo profundamente.");
		dialogue_text("* Eu tenho a impressão de já ter o visto, mas não consigo me lembrar exatamente aonde...");
		dialogue_text("* Melhor deixá-lo dormir");
		break;

		case "hole":
		dialogue_text("[c_red]Descer?[/c]");
		dialogue_option("* Não", "nothing");
		dialogue_option("* Sim", "descer");
		break;
		
		case "crow 1":
		dialogue_text("[shake]FAAAAAAAHHHHHHH[shake]","C");
		dialogue_text("[shake]FFFFFFFFFFFFFFFFFFFAAAAAAAHHHHHHH[shake]","C");
		dialogue_text("Ahem.. - Coff Coff -","C");
		dialogue_text("Você é novo por aqui, né?","C");
		dialogue_option("* QUE??????", "crow 2");
		dialogue_option("* Você FALA?", "crow 2");
		break;

		case "crow 2":
		dialogue_text("Eu estava apenas aquecendo minha garganta!","C");
		dialogue_text("A propósito, me chamo [c_blue]Corvet[/c], prazer em conhecê-lo!","Corvet");
		dialogue_option("* Me chamo [c_fuchsia]Yumi[/c]", "crow 3");
		dialogue_option("* Tou num sonho?", "crow 4");
		break;
		
		case "crow 3":
		dialogue_text("Que nome feio, não é nada elegante. Mas fazer o que né, nem todos tem um nome incrível...","Corvet");
		dialogue_text("Bom, você deve estar perdido, né? Tipo, sem saber aonde você tá e tudo mais...","Corvet");
		dialogue_text("Bem vido à Sala de Veludo, um lugar que existe entre sonh-","Corvet");
		dialogue_text("Pera, essa é a frase errada...","Corvet");
		dialogue_text("Nós chamamos esse lugar de Corvopia, a cidade dos Corvos!","Corvet");
		
		dialogue_option("* Nós...?", "crow 5");
		dialogue_option("* Cidade?", "crow 5");
		break;
		
		case "crow 4":
		dialogue_text("Bem vido à Sala de Veludo, um lugar que existe entre sonh-","Corvet");
		dialogue_text("Pera, essa é a frase errada...","Corvet");
		dialogue_text("Uhhh, é, acho que você não tá sonhando. Eu acho. Talvez.","Corvet");
		dialogue_text("Nós chamamos esse lugar de [c_fuchsia]Corvopia[/c], a cidade dos Corvos!","Corvet");
		
		dialogue_option("* Nós...?", "crow 5");
		dialogue_option("* Cidade?", "crow 5");

		break;
		
		case "crow 5":
		dialogue_text("Então, vamos direto pro assunto: [wave][rainbow]EU TOU FERRADO[rainbow][wave]","Corvet");
		dialogue_text("Todos os meus amigos ficaram malignos e me expulsaram da cidade. Agora tou preso...","Corvet");
		dialogue_text("Tudo isso aconteceu quando apareceu um gato aqui... Pelo o que eu me lembre, trancaram ele naquela cela!","Corvet");
		dialogue_text("Ela tem [c_yellow]3 entradas de chave[/c]","Corvet");
		dialogue_option("* Preciso do Gato", "crow 6");
		dialogue_option("* Vou pra Cidade", "crow 7");
		break;
		
		case "enter gate":
		dialogue_text("* Entrar?","");
		dialogue_option("* Não", "nothing");
		dialogue_option("* Sim", "gate!");
		break;
		
		case "key 1":
		dialogue_text("* Peguei a primeira [c_yellow]chave...[/c]","");
		dialogue_text("* Estou cansado. Deveria voltar pra casa.","");
		break;
		
		case "key 2":
		dialogue_text("* Peguei a segunda [c_yellow]chave...[/c]","");
		dialogue_text("* Estou cansado. Deveria voltar pra casa.","");
		break;
		
		case "key 3":
		dialogue_text("* Peguei a última [c_yellow]chave...[/c]","");
		dialogue_text("* Estou cansado. Deveria voltar pra casa.","");
		break;
		
		case "exit gate":
		if !instance_exists(obj_key){
			dialogue_text("* Sair?");
			dialogue_option("* Não", "nothing");
			dialogue_option("* Sim", "exit!");	
		} else {
			dialogue_text("* Eu deveria pegar a Chave...");
		}
		break;
		
		case "crow 6":
		dialogue_text("Bom, eu realmente não gosto de gatos... Mas eu preciso voltar pra [c_fuchsia]Cidade[/c]...","Corvet");
		dialogue_text("O que acha de colaborarmos?","Corvet");
		dialogue_text("Vamos fazer o seguinte: a gente entra naquela cela e você me [wave][c_yellow]me usa como arma![/c][wave]","Corvet");
		dialogue_text("E não se esqueça de se esquivar! [c_gray](shift)[/c]","Corvet");
		dialogue_text("[c_gray]aperte o botão esquerdo do mouse para atirar e shift para esquivar[/c]","");
		dialogue_event[0] = "cela";
		dialogue_event[1] = page_number;
		dialogue_text("Vambora!","Corvet");
		break;
		
		case "crow 7":
		dialogue_text("Tá, mas leva esse gato junto, eu tenho [shake]PAVOR[shake] de gato","Corvet");
		dialogue_text("Vamos fazer o seguinte: a gente entra naquela cela e você me [wave][c_yellow]me usa como arma![/c][wave]","Corvet");
		dialogue_text("E não se esqueça de se esquivar! [c_gray](shift)[/c]","Corvet");
		dialogue_text("[c_gray]aperte o botão esquerdo do mouse para atirar e shift para esquivar[/c]","");
		dialogue_event[0] = "cela";
		dialogue_event[1] = page_number;
		dialogue_text("Vambora!","Corvet");
		break;
		
		case "crow 8":
		dialogue_text("Vambora!","Corvet");
		break;
		
		case "descer":
		dialogue_event[0] = "descer";
		dialogue_event[1] = page_number;
		dialogue_text("* Você decidiu pular no buraco");
		break;
		
		case "exit!":
		dialogue_event[0] = "exit!";
		dialogue_event[1] = page_number;
		dialogue_text("* Hora de voltar...");
		break;
		

		
		case "end":
		dialogue_event[0] = "end";
		dialogue_event[1] = page_number;
		var _name = environment_get_variable("USERNAME");
		dialogue_text($"Nossa história parece ter acabado, [c_red]{_name}[/c].");
		dialogue_text($"Parece que realmente não existe destino.");
		dialogue_text($"Adeus.");
		
		break;
		
		case "init":
		var _name = environment_get_variable("USERNAME");
		dialogue_text("Nossa história se passa em uma cidade do interior, nos anos 2010 [c_gray](espaço)[/c]");
		dialogue_text($"Agora, me diga, [c_fuchsia]{_name}[/c], você acredita em destino?");
		dialogue_option("* Não", "init 2");
		dialogue_option("* Sim", "init 2");
		
		break;
		
		case "init 2":
		var _name = environment_get_variable("USERNAME");
		dialogue_event[0] = "init 2";
		dialogue_event[1] = page_number;

		dialogue_text("Entendido. Isso será interessante.");
		dialogue_text("Aproveite seus dias ao máximo e nutra seus laços.");
		dialogue_text("Lembre-se: [c_yellow]o tempo é um recurso importante[/c].");
		dialogue_text("Nessa história, você se chamará [c_fuchsia]Yumi[/c].");
		dialogue_text($"Adeus, por enquanto, [c_fuchsia]{_name}[/c].");
		

		break;
		case "nokey":

		dialogue_text("Parece que eu preciso de três chaves...");
		
		break;
		
		case "noday":

		dialogue_text("Há uma mensagem:");
		var _name = environment_get_variable("USERNAME");

		dialogue_text($"[c_fuchsia]{_name}[/c], aproveite seus dias. Volte aqui quando o fim se aproximar.");
		dialogue_text("* Quem é essa pessoa?? Quem escreveu isso??");
		
		break;
		
		case "yesday":
		dialogue_text("* Abrir a porta?");
		dialogue_option("* Não", "nothing");
		dialogue_option("* Sim", "w");
		break;
		
		case "w":
		dialogue_event[0] = "win";
		dialogue_event[1] = page_number;
		dialogue_text("* Eu abri a porta","");
		break;
		
		case "finale":

		var _name = environment_get_variable("USERNAME");
		dialogue_text($"Parabéns, [c_fuchsia]{_name}[/c], você perseverou");
		dialogue_text("Mas essa foi apenas a primeira etapa. Temos muito a fazer.");
		dialogue_text("[c_gray](Muito obrigado por jogar! Aperte esc para acessar o menu)[/c]");
		break;
		
		case "tuts":
		dialogue_text("[c_gray](WASD para se mover, espaço para confirmar/interagir)");
		dialogue_text("[c_gray](experimente chegar perto de objetos/lugares e apertar espaço!)");
		
		break;
		case "nosleep":
		dialogue_text("* Acabei de acordar...");
		break;
		case "yessleep":
		dialogue_text("* Dormir...? Tipo, eu até posso fazer isso...");
		dialogue_text("* Mas eu posso [c_yellow]fazer atividades...[/c]");
		dialogue_option("* Não dormir", "nothing");
		dialogue_option("* Dormir", "mimimi");
		break;
		
		case "mimimi":
		dialogue_event[0] = "skip day";
		dialogue_event[1] = page_number;
		dialogue_text("* Vou ir dormir");
		break;
		
		case "schoolwalk 1":
		dialogue_event[0] = "go to school";
		dialogue_event[1] = page_number;
		dialogue_text("Cara, mal se passou uma semana do início das aulas e eu já tou [wave]exaaausto...[/wave]","Aluno 1");
		dialogue_text("Sei como é. Realmente é bem cansativo mesmo.","Aluno 2");
		dialogue_text("Mas, pelo menos, as aulas só ocupam [c_yellow]o turno da manhã[/c]!","Aluno 2");
		dialogue_text("Quando elas acabarem, poderemos [c_yellow]voltar pra casa[/c] ou fazer alguma [c_yellow]atividade[/c] legal...","Aluno 2");
		dialogue_text("O que acha de vir lá em casa jogar [c_fuchsia]Omni Cura[/c] comigo?","Aluno 1");
		dialogue_text("Dizem que só de você jogar com o espadachim você melhora sua [c_red]vitalidade[/c] na vida real!","Aluno 1");
		dialogue_text("Pffffff... Você realmente acredita nisso?","Aluno 1");
		dialogue_text("* Parece que há várias coisas para se fazer [c_yellow]após a faculdade[/c]...", "");
		break;
		
		case "schoolwalk 2":
		dialogue_event[0] = "go to school";
		dialogue_event[1] = page_number;
		dialogue_text("Mano, você viu que a reforma do parque terminou ontem?","Aluno 1");
		dialogue_text("Vi não, como ficou?","Aluno 2");
		dialogue_text("Bora dar uma passada lá, acho que [c_yellow]sair depois da aula[/c] ajuda a mente","Aluno 2");
		dialogue_text("* Talvez eu devesse sair com alguém [c_yellow]após a falcudade[/c]...", "");
		
		break;
		
		case "schoolwalk 3":
		dialogue_event[0] = "go to school";
		dialogue_event[1] = page_number;
		dialogue_text("Mano, eu tou viciado num jogo chamado Harmonia da Seda..","Aluno 1");
		dialogue_text("Ah, foi aquele que demorou uns 7 anos pra sair?","Aluno 2");
		dialogue_text("Esse mesmo. Como eu adoro jogos indies!","Aluno 2");
		dialogue_text("Afinal, o QUE é um jogo indie", "Aluno 1");
		dialogue_text("... Não cara, Jornada 34 não é indie", "Aluno 2");
		
		break;
		
		case "schoolwalk 4":
		dialogue_event[0] = "go to school";
		dialogue_event[1] = page_number;
		dialogue_text("O que tu acha da ideia de universos paralelos?","Aluno 1");
		dialogue_text("Isso aí é papo de doido...","Aluno 2");
		dialogue_text("Até parece que existiria uma passagem pra outro mundo","Aluno 2");
		dialogue_text("Ah, sei lá, nunca se sabe", "Aluno 1");
		dialogue_text("* ................", "");
		
		break;
	
		case "schoolwalk 5":
		dialogue_event[0] = "go to school";
		dialogue_event[1] = page_number;
		dialogue_text("Tou preocupado com essa prova","Aluno 1");
		dialogue_text("Relaxa, é só usar a regra da cadeia nas integrais","Aluno 2");
		dialogue_text("Não é tão difícil quanto parece...","Aluno 2");
		dialogue_text("Mais difícil que [c_fuchsia]Omni Cura[/c] não vai ser..", "Aluno 1");
		dialogue_text("* Eu deveria jogar [c_fuchsia]Omni Cura[/c] uma hora no meu PC...", "");
		
		break;
		
		case "schoolwalk 6":
		dialogue_event[0] = "go to school";
		dialogue_event[1] = page_number;
		dialogue_text("[wave]Que soooooooono[wave]","Aluno 1");
		dialogue_text("z...zzz..","Aluno 2");
		dialogue_text("Tá acordado, mano?", "Aluno 1");
		dialogue_text("Alôôô?", "Aluno 1");
		dialogue_text("Acho que ele é sonâmbulo...", "Aluno 1");
		
		break;
		
		case "schoolwalk 7":
		dialogue_event[0] = "go to school";
		dialogue_event[1] = page_number;
		dialogue_text("* O dia está estranhamente quieto...","");
		dialogue_text("* ...","");
		dialogue_text("* Eu preciso achar aquele [c_aqua]gato[/c]...","");
		break;
		
		case "schoolwalk 8":
		dialogue_event[0] = "go to school";
		dialogue_event[1] = page_number;
		dialogue_text("Finalmente, amanhã temos folga!","Aluno 1");
		dialogue_text("E prova na próxima semana...","Aluno 2");
		dialogue_text("[shake]NÃO PRECISAVA ME LEMBRAR!![shake]","Aluno 1");
		dialogue_text("* Hoje é [c_yellow]o dia final[/c]. Eu deveria resolver todas as minhas pendências...","");
		break;
		
		case "omni cura":

		dialogue_text("* Parece que eu tenho alguns jogos instalados","");
		dialogue_option("* Sair", "nothing");
		dialogue_option("* Omni Cura", "j3");
		dialogue_option("* Povo Dado", "j2");
		dialogue_option("* Arca Gema", "j1");
		break;
		
		
		
		case "j1":

		dialogue_text("* Comecei a jogar Arca Gema, feito pelo Hagonfe e pelo Gugo","");
		dialogue_text("* ...","");
		dialogue_text("* Eu consigo perceber o carinho colocado durante o desenvolvimento do jogo...","");
		dialogue_text("* Plataformas de precisão são realmente legais...","");
		dialogue_text("* Apesar de eu morrer bastante...","");
		dialogue_event[0] = "forçaj";
		dialogue_event[1] = page_number;
		dialogue_text("[c_gray](Sua [/c][c_orange]força[/c][c_gray] aumentou!)[/c]", "");


		break;
		
		case "j2":

		dialogue_text("* Comecei a jogar Povo Dado, feito pelo Manonove e pelo 2Milhas","");
		dialogue_text("* ...","");
		dialogue_text("* Eu consigo perceber o carinho colocado durante o desenvolvimento do jogo...","");
		dialogue_text("* Jogos idles são bem satisfatórios...","");
		dialogue_text("* E tem um pacing rápido...","");
		dialogue_event[0] = "spdj";
		dialogue_event[1] = page_number;
		dialogue_text("[c_gray](Sua [/c][c_lime]velocidade[/c][c_gray] aumentou!)[/c]", "");

		break;
		
		case "j3":

		dialogue_text("* Comecei a jogar Omni Cura, feito pelo estúdio escuro...","");
		dialogue_text("* ...","");
		dialogue_text("* Eu consigo perceber o carinho colocado durante o desenvolvimento do jogo...","");
		dialogue_text("* Eu adoro acertar esses parries!","");
		dialogue_text("* Apesar de ser difícil...","");
		dialogue_event[0] = "vidaj";
		dialogue_event[1] = page_number;
		dialogue_text("[c_gray](Sua [/c][c_red]vida máxima[/c][c_gray] aumentou!)[/c]", "");

		break;
		
		case "int":

		dialogue_text("* Tenho uns exercícios para fazer...","");
		dialogue_text("* Se eu resolvê-los, acredito que conseguirei [c_lime]ser mais rápido[/c] em fazer coisas","");
		dialogue_text("* Mas isso fará o [c_yellow]tempo passar[/c]...","");
		dialogue_text("* Resolver exercícios?","");
		dialogue_option("* Não", "nothing");
		dialogue_option("* Resolver", "resolver");

		break;
		
		case "resolver":
		dialogue_event[0] = "spda";
		dialogue_event[1] = page_number;
		dialogue_text("* ... Comecei a resolver uma integral...","");
		dialogue_text("* ...","");
		dialogue_text("* Foi difícil achar essa antiderivada..","");
		dialogue_text("* Parece que vou passar um tempo resolvendo tudo isso...","");
		dialogue_text("[c_gray](sua [/c][c_lime]velocidade [/c][c_gray]aumentou!)[/c]","");
		break;
		
		
		case "no pc":

		dialogue_text("* Não é um bom horário para jogar agora...","");

		break;
		
	}
}