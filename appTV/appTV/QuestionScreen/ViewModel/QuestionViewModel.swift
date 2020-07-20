//
//  QuestionViewModel.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 08/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import Foundation

class QuestionViewModel {
	
	var acre: [Asking] = []
	var amapa: [Asking] = []
	var amazonas: [Asking] = []
	var para: [Asking] = []
	var rondonia: [Asking] = []
	var roraima: [Asking] = []
	var tocantins: [Asking] = []
	var alagoas: [Asking] = []
	var bahia: [Asking] = []
	var ceara: [Asking] = []
	var maranhao: [Asking] = []
	var paraiba: [Asking] = []
	var pernambuco: [Asking] = []
	var piaui: [Asking] = []
	var rioGrandeDoNorte: [Asking] = []
	var sergipe: [Asking] = []
	var parana: [Asking] = []
	var rioGrandeDoSul: [Asking] = []
	var santaCatarina: [Asking] = []
	var espiritoSanto: [Asking] = []
	var minasGerais: [Asking] = []
	var rioDeJaneiro: [Asking] = []
	var saoPaulo: [Asking] = []
	var distritoFederal: [Asking] = []
	var goias: [Asking] = []
	var matoGrosso: [Asking] = []
	var matoGrossoDoSul: [Asking] = []
	
	var flagImages: [String] = ["AC", "AP", "AM", "PA", "RO", "RR", "TO", "AL", "BA", "CE", "MA", "PB", "PE", "PI", "RN", "SE", "PR", "RS", "SC", "ES", "MG", "RJ","SP", "DF", "GO", "MT", "MS"]
	
	func setAcre() {
		acre.append(Asking(question: "Qual a capital do Acre?", rightAnswer: "Rio Branco", secondAnswer: "Acrelândia", thirdAnswer: "Tarauacá"))
		acre.append(Asking(question: "Com quais países o Acre faz divisa?", rightAnswer: "Bolívia e Peru", secondAnswer: "Bolívia e Venezuela", thirdAnswer: "Chile e Argentina"))
		acre.append(Asking(question: "Qual ex-presidente brasileiro promoveu o Acre a estado?", rightAnswer: "João Goulart", secondAnswer: "Jânio Quadros", thirdAnswer: "Castelo Branco"))
		acre.append(Asking(question: "Qual forma de relevo é predominante no território do Acre?", rightAnswer: "Planalto", secondAnswer: "Planície", thirdAnswer: "Montanhas"))
		acre.append(Asking(question: "Das comidas típicas listadas qual é pertencente ao Acre?", rightAnswer: "Pirarucu à Casaca ao leite de castanhas", secondAnswer: "Pato no Tucupi", thirdAnswer: "Buchada de boi"))
		acre.shuffle()
	}
	
	func setAmapa() {
		amapa.append(Asking(question: "Qual a capital do Amapá?", rightAnswer: "Macapá", secondAnswer: "Boa Vista", thirdAnswer: "Porto Velho"))
		amapa.append(Asking(question: "Nas áreas do Amapá perto do litoral, qual é a vegetação predominante?", rightAnswer: "Mangue", secondAnswer: "Floresta Amazônica", thirdAnswer: "Pantanal"))
		amapa.append(Asking(question: "Das comidas típicas listadas qual é pertencente ao Amapá?", rightAnswer: "Tacacá", secondAnswer: "Pescada Gurijuba", thirdAnswer: "Tucunaré na brasa"))
		amapa.append(Asking(question: "Qual o clima predominante do Amapá?", rightAnswer: "Equatorial", secondAnswer: "Tropical", thirdAnswer: "Subtropical"))
		amapa.append(Asking(question: "Qual o nome da unidade de relevo que vai do leste a oeste, desde o Amapá até a Venezuela?", rightAnswer: "Planícies Amapaenses", secondAnswer: "Planícies Litorâneas", thirdAnswer: "Platô das Guianas"))
	}
	
	func setAmazonas() {
		amazonas.append(Asking(question: "Qual a capital de Amazonas?", rightAnswer: "Manaus", secondAnswer: "Belém", thirdAnswer: "Palmas"))
		amazonas.append(Asking(question: "Dos estados listados qual deles faz fronteira com o estado do Amazonas?", rightAnswer: "Roraima", secondAnswer: "Mato Grosso do Sul", thirdAnswer: "Goiás"))
		amazonas.append(Asking(question: "Qual o nome do documento que colocou o estado do Amazonas no domínio espanhol?", rightAnswer: "Tratado de Tordesilhas", secondAnswer: "Tratado de Versalhes", thirdAnswer: "Tratado de Methuen"))
		amazonas.append(Asking(question: "Os solos amazonenses são ricos em nutrientes?", rightAnswer: "Não", secondAnswer: "Sim", thirdAnswer: "Apenas na região Leste e Sul do estado"))
		amazonas.append(Asking(question: "Das comidas típicas listadas qual é pertencente ao Amazonas?", rightAnswer: "Pato no tucupi", secondAnswer: "Tambaqui", thirdAnswer: "Pirarucu"))
	}
	
	func setPara() {
		para.append(Asking(question: "Qual a capital do Pará?", rightAnswer: "Belém", secondAnswer: "Rio Branco", thirdAnswer: "Palmas"))
		para.append(Asking(question: "Com quais países o Pará possui fronteira?", rightAnswer: "Suriname e Guiana", secondAnswer: "Colômbia e Suriname", thirdAnswer: "Guiana Francesa e Venezuela"))
		para.append(Asking(question: "Qual produto que o Pará exporta em larga escala, tornando-se o maior produtor deste?", rightAnswer: "Pimenta-do-reino", secondAnswer: "Canela", thirdAnswer: "Banana"))
		para.append(Asking(question: "Na região de Belém, qual a atividade comercial que é predominante?", rightAnswer: "Indústria", secondAnswer: "Extrativismo mineral", thirdAnswer: "Agricultura"))
		para.append(Asking(question: "O Governador do Pará em 2020 é:", rightAnswer: "Helder Barbalho", secondAnswer: "Almir Gabriel", thirdAnswer: "Simão Jatene"))
	}
	
	func setRondonia() {
		rondonia.append(Asking(question: "Qual a capital e Rondônia?", rightAnswer: "Porto Velho", secondAnswer: "Boa Vista", thirdAnswer: "Belém"))
		rondonia.append(Asking(question: "Dos produtos listados qual é o principal exportado por Rondônia?", rightAnswer: "Feijão", secondAnswer: "Milho", thirdAnswer: "Carne Bovina"))
		rondonia.append(Asking(question: "Das comidas listadas qual é típica de Rondônia?", rightAnswer: "Caldeirada de tambaqui", secondAnswer: "Tacacá", thirdAnswer: "Torta de cupuaçu"))
		rondonia.append(Asking(question: "Qual o clima predominante em Rondônia?", rightAnswer: "Tropical úmido", secondAnswer: "Subtropical", thirdAnswer: "Subtropical de monções"))
		rondonia.append(Asking(question: "O projeto de transformar Rondônia em estado só iniciou-se em 1979. O principal motivo para tal foi...", rightAnswer: "O grande fluxo de imigrantes de outros estados", secondAnswer: "Reivindicações dos próprios moradores de Rondônia", thirdAnswer: "Necessidade de resguardar o território do estado de invasões estrangeiras"))
	}
	
	func setRoraima() {
		roraima.append(Asking(question: "Qual a capital de Roraima?", rightAnswer: "Boa Vista", secondAnswer: "Manaus", thirdAnswer: "Porto Velho"))
		roraima.append(Asking(question: "O nome Roraima tem origem indígena. Qual o seu significado?", rightAnswer: "Morro verde", secondAnswer: "Terra selvagem", thirdAnswer: "Céu azul"))
		roraima.append(Asking(question: "É correto afirmar que o território federal de Rio Branco, posteriormente denominado Roraima, foi criado devido a...", rightAnswer: "Necessidade de ocupação dos territórios não povoados do Brasil, principalmente na Amazonas", secondAnswer: "Plantações e criação de gado que existia no território", thirdAnswer: "Necessidade de começar a extração de látex nas áreas de floresta"))
		roraima.append(Asking(question: "A damurida é um dos pratos típicos de Roraima. Este prato é...", rightAnswer: "Uma moqueca de peixe", secondAnswer: "Uma torta de peixe", thirdAnswer: "Uma broa de macaxeira"))
		roraima.append(Asking(question: "Qual o nome do local mais alto de Roraima?", rightAnswer: "Monte Roraima", secondAnswer: "Monte do Cupuaçu", thirdAnswer: "Monte da Damurida"))
	}
	
	func setTocantins() {
		tocantins.append(Asking(question: "Qual a capital de Tocantis?", rightAnswer: "Palmas", secondAnswer: "São Luís", thirdAnswer: "Teresina"))
		tocantins.append(Asking(question: "A região que hoje é o Tocantins antes fazia parte de Goiás. Por que iniciaram-se os movimentos de emancipação?", rightAnswer: "Devido ao atraso econômico da região que antes era o norte em relação ao restante do estado", secondAnswer: "Devido à necessidade de administração da área, que se desenvolvia rapidamente", thirdAnswer: "Devido à diferença de relevo"))
		tocantins.append(Asking(question: "Qual é o clima predominante no Tocantins?", rightAnswer: "Tropical seco", secondAnswer: "Subtropical", thirdAnswer: "Meridional"))
		tocantins.append(Asking(question: "Dos rios listados qual é um rio do Tocantins?", rightAnswer: "Rio Araguaia", secondAnswer: "Rio das Pedras", thirdAnswer: "Rio das Areias"))
		tocantins.append(Asking(question: "Das comidas listadas qual comida típica é do Tocantis?", rightAnswer: "Peixada", secondAnswer: "Pato no Tucupi", thirdAnswer: "Acarajé"))
	}
	
	func setAlagoas() {
		alagoas.append(Asking(question: "Qual a capital do Alagoas?", rightAnswer: "Maceió", secondAnswer: "Arapiraca", thirdAnswer: "Penedo"))
		alagoas.append(Asking(question: "Qual o nome do folguedo (festa) tradicional alagoano?", rightAnswer: "Guerreiro", secondAnswer: "Bumba-meu-boi", thirdAnswer: "Afoxé"))
		alagoas.append(Asking(question: "Qual é o nome do mais emblemático quilombo atualmente localizado na região do Alagoas?", rightAnswer: "Quilombo dos Palmares", secondAnswer: "Quilombo dos Guerreiros", thirdAnswer: "Quilombo da União"))
		alagoas.append(Asking(question: "Antes de sua emancipação o território de Alagoas pertencia a outro estado. Qual?", rightAnswer: "Pernambuco", secondAnswer: "Bahia", thirdAnswer: "Ceará"))
		alagoas.append(Asking(question: "Quais eram as tribos que habitavam no território de Alagoas antes da chegada dos portugueses?", rightAnswer: "Tupis e Caétes", secondAnswer: "Guaranis e Tupis", thirdAnswer: "Caiapós e Tupinambás"))
	}
	
	func setBahia() {
		bahia.append(Asking(question: "Qual a capital da Bahia?", rightAnswer: "Salvador", secondAnswer: "Ilhéus", thirdAnswer: "Porto Seguro"))
		bahia.append(Asking(question: "Qual cidade do estado da bahia tem a maior concentração de descendentes africanos do mundo?", rightAnswer: "Salvador", secondAnswer: "Trancoso", thirdAnswer: "Feira De Santana"))
		bahia.append(Asking(question: "Qual é a cidade que fica na região que Pedro Alvares Cabral desembarcou no Brasil em 1500?", rightAnswer: "Porto Seguro", secondAnswer: "Salvador", thirdAnswer: "Vitória da Conquista"))
		bahia.append(Asking(question: "Qual é o nome do forte situado na Baía de todos os santos na cidade de Salvador?", rightAnswer: "Forte São Marcelo", secondAnswer: "Forte São Diogo", thirdAnswer: "Forte Santo Antônio da Barra"))
		bahia.append(Asking(question: "Qual é o nome do castelo criado em 1551 próximo a região de Salvador?", rightAnswer: "Castelo Garcia D'ávila", secondAnswer: "Castelo de Itaipava", thirdAnswer: "Castelo Zé dos Montes"))
	}
	
	func setCeara() {
		ceara.append(Asking(question: "Em que ano o Ceará aboliu a escravatura?", rightAnswer: "1884", secondAnswer: "1894", thirdAnswer: "1904"))
		ceara.append(Asking(question: "Por que chapada do Arapari é tão importante para o Brasil?", rightAnswer: "É um dos depósitos de fósseis paleontológicos mais ricos e importantes do mundo", secondAnswer: "Porque abrange os maiores rios do Brasil", thirdAnswer: "Porque foi o primeiro local onde os portugueses ancoraram"))
		ceara.append(Asking(question: "Qual a capital do Ceará?", rightAnswer: "Fortaleza", secondAnswer: "Jericoacoara", thirdAnswer: "Natal"))
		ceara.append(Asking(question: "Qual é o rio mais longo do Ceará?", rightAnswer: "Jaguaribe", secondAnswer: "Choró", thirdAnswer: "São Francisco"))
		ceara.append(Asking(question: "Qual o clima do Ceará?", rightAnswer: "Semiárido", secondAnswer: "Tropical", thirdAnswer: "Equatorial"))
	}
	
	func setMaranhao() {
		maranhao.append(Asking(question: "Qual a capital do Maranhão?", rightAnswer: "São Luís", secondAnswer: "São Paulo", thirdAnswer: "São Pedro"))
		maranhao.append(Asking(question: "A cidade de São Luís foi fundada por...", rightAnswer: "Franceses", secondAnswer: "Portugueses", thirdAnswer: "Holandeses"))
		maranhao.append(Asking(question: "Qual desses Estados faz fronteira com o Maranhão?", rightAnswer: "Pará", secondAnswer: "Amapá", thirdAnswer: "Ceará"))
		maranhao.append(Asking(question: "Em termos de área territorial, qual posição do Maranhão?", rightAnswer: "Oitava", secondAnswer: "Quarta", thirdAnswer: "Terceira"))
		maranhao.append(Asking(question: "Por que os Lençóis Maranhenses são tão importantes para o meio ambiente?", rightAnswer: "Porque possui mangues, restingas e dunas", secondAnswer: "Porque possui a maior fauna de peixes do Brasil", thirdAnswer: "Porque possui a maior Floresta Tropical do Mundo"))
	}
	
	func setParaiba() {
		paraiba.append(Asking(question: "Qual a capital da Paraíba?", rightAnswer: "João Pessoa", secondAnswer: "Teresina", thirdAnswer: "Manaus"))
		paraiba.append(Asking(question: "Qual o nome do extremo oriente do Brasil, localizado na Paraíba?", rightAnswer: "Ponta do Seixas", secondAnswer: "Ponta Grossa", thirdAnswer: "Ponta do Sol"))
		paraiba.append(Asking(question: "Qual o nome do sítio paleontológico que existe na Paraíba, onde registra-se a maior incidência de pegadas de dinossauro no mundo?", rightAnswer: "Vale dos Dinossauros", secondAnswer: "Vale da Praia", thirdAnswer: "Vale do Rio Doce"))
		paraiba.append(Asking(question: "Em que cidade da Paraíba é realizada a maior festa de São João do mundo?", rightAnswer: "Campina Grande", secondAnswer: "Campinas", thirdAnswer: "Campina do Norte"))
		paraiba.append(Asking(question: "A palavra 'Nego na bandeira da Paraíba...", rightAnswer: "Simboliza a rejeição do político João Pessoa à candidatura de Júlio Prestes", secondAnswer: "Simboliza a rejeição de práticas escravistas no período do Brasil Imperial", thirdAnswer: "Simboliza que a rejeição ao racismo fortemente contido no Estado"))
	}
	
	func setPernambuco() {
		pernambuco.append(Asking(question: "Qual a capital do Pernambuco?", rightAnswer: "Recife", secondAnswer: "Olinda", thirdAnswer: "Salvador"))
		pernambuco.append(Asking(question: "Qual é o ritmo tradicionalmente tocado no carnaval pernambucano?", rightAnswer: "Frevo", secondAnswer: "Axé", thirdAnswer: "Pagode"))
		pernambuco.append(Asking(question: "Qual é o nome do conde holandês responsável pela criação de Recife?", rightAnswer: "Mauricio de Nassau", secondAnswer: "João VI", thirdAnswer: "Texeira de Freitas"))
		pernambuco.append(Asking(question: "Pernambuco foi conhecido na época do Brasil Colonia pela produção de...", rightAnswer: "Açúcar", secondAnswer: "Café", thirdAnswer: "Algodão"))
		pernambuco.append(Asking(question: "Qual é a primeira cidade brasileira que recebeu o título de patrimônio histórico e cultural da humanidade do Brasil?", rightAnswer: "Olinda", secondAnswer: "Recife", thirdAnswer: "Salvador"))
	}
	
	func setPiaui() {
		piaui.append(Asking(question: "Qual a capital do Piauí?", rightAnswer: "Teresina", secondAnswer: "Palmas", thirdAnswer: "Maceió"))
		piaui.append(Asking(question: "Entre os Patrimônios Culturais do Estado do Piauí, podemos destacar...", rightAnswer: "Cajuína, uma bebida feita à base de suco de caju", secondAnswer: "Cafeína, uma substância presente no café", thirdAnswer: "Codeína, um fármaco produzido a partir de um alcaloide"))
		piaui.append(Asking(question: "Qual o nome do local onde foram encontradas pinturas rupestres no Piauí?", rightAnswer: "Serra da Capivara", secondAnswer: "Serra da Mantiqueira", thirdAnswer: "Serra do Brasil"))
		piaui.append(Asking(question: "Qual o nome da cidade que foi a primeira capital do Piauí?", rightAnswer: "Oieiras", secondAnswer: "Oliveiras", thirdAnswer: "Cabreiras"))
		piaui.append(Asking(question: " Qual foi a revolta que ocorreu em 1838 até 1841 na região do Piauí e Maranhão?", rightAnswer: "Balaiada", secondAnswer: "Revolta da vacina", thirdAnswer: "Cabanagem"))
	}
	
	func setRioGrandeDoNorte() {
		rioGrandeDoNorte.append(Asking(question: "Qual a capital do Rio Grande do Norte?", rightAnswer: "Natal", secondAnswer: "Recife", thirdAnswer: "Palmas"))
		rioGrandeDoNorte.append(Asking(question: "Qual é o nome da base de lançamentos das forças áreas localizada próxima a Natal?", rightAnswer: "Barreira do Inferno", secondAnswer: "Cabo Canaveral", thirdAnswer: "Base Aérea de Natal"))
		rioGrandeDoNorte.append(Asking(question: "O Rio Grando do Norte é conhecido por suas...", rightAnswer: "Dunas", secondAnswer: "Florestas", thirdAnswer: "Pradarias"))
		rioGrandeDoNorte.append(Asking(question: "Qual é o nome da fortificação construída em 1598 na atual região da cidade de Natal?", rightAnswer: "Fortaleza dos Reis Magos", secondAnswer: "Forte São Marcelo", thirdAnswer: "Castelo Garcia D'Avilla"))
		rioGrandeDoNorte.append(Asking(question: "Qual é a comida típica mais famosa do Rio Grande do Norte?", rightAnswer: "Carne de Sol", secondAnswer: "Bobó de Camarão", thirdAnswer: "Churrasco"))
	}
	
	func setSergipe() {
		sergipe.append(Asking(question: "Qual a capital do Sergipe?", rightAnswer: "Aracaju", secondAnswer: "Natal", thirdAnswer: "Salvador"))
		sergipe.append(Asking(question: "Qual é o rio que fica na divisa entre Alagoas e Sergipe?", rightAnswer: "Rio São Francisco", secondAnswer: "Rio Amazonas", thirdAnswer: "Rio Araguaia"))
		sergipe.append(Asking(question: "A que Capitania o Sergipe pertencia antes de sua emancipação?", rightAnswer: "Baia de Todos os Santos", secondAnswer: "Pernambuco", thirdAnswer: "Santa Cruz"))
		sergipe.append(Asking(question: "Qual foi a primeira capital de Sergipe?", rightAnswer: "São Cristovão", secondAnswer: "Aracaju", thirdAnswer: "Manaus"))
		sergipe.append(Asking(question: "Sergipe é o ______ estado brasileiro", rightAnswer: "menor", secondAnswer: "maior", thirdAnswer: "mais rico"))
	}
	
	func setParana() {
		parana.append(Asking(question: "Qual a capital do Paraná?", rightAnswer: "Curitiba", secondAnswer: "Campo  Largo", thirdAnswer: "Ponta Grossa"))
		parana.append(Asking(question: "Qual a comida típica mais famosa desse estado?", rightAnswer: "Barreado", secondAnswer: "Quiabo", thirdAnswer: "Polenta com carne seca"))
		parana.append(Asking(question: "Qual o clima do Paraná?", rightAnswer: "Subtropical e tropical", secondAnswer: "Semiárido e tropical ", thirdAnswer: "Equatorial e Mediterrâneo"))
		parana.append(Asking(question: "Qual o tipo de solo que cobre a maior parte do Paraná?", rightAnswer: "Terra roxa", secondAnswer: "Terra vermelha", thirdAnswer: "Terra branca"))
		parana.append(Asking(question: "Por qual linha imaginária o Paraná é cortado ao norte?", rightAnswer: "Trópico de Capricórnio", secondAnswer: "Linha do Equador", thirdAnswer: "Trópico de Câncer"))
	}
	
	func setRioGrandeDoSul() {
		rioGrandeDoSul.append(Asking(question: "Qual a capital do Rio Grande do Sul?", rightAnswer: "Porto Alegre", secondAnswer: "Gravataí", thirdAnswer: "Rio Grande"))
		rioGrandeDoSul.append(Asking(question: "Qual a comida típica mais famosa do Rio Grande do Sul?", rightAnswer: "Churrasco", secondAnswer: "Carne de Sol", thirdAnswer: "Arroz carreteiro"))
		rioGrandeDoSul.append(Asking(question: "Qual o clima do Rio Grande do Sul?", rightAnswer: "Temperado", secondAnswer: "Seco", thirdAnswer: "Mediterrâneo"))
		rioGrandeDoSul.append(Asking(question: "Quais são festas e eventos tradicionais do Rio Grande do Sul?", rightAnswer: "Congada", secondAnswer: "Oktoberfest", thirdAnswer: "Festa da Uva"))
		rioGrandeDoSul.append(Asking(question: "Quantos municípios o Rio Grande do Sul possui?", rightAnswer: "497", secondAnswer: "450", thirdAnswer: "329"))
	}
	
	func setSantaCatarina() {
		santaCatarina.append(Asking(question: "Qual a capital de Santa Catarina?", rightAnswer: "Florianópolis", secondAnswer: "São José", thirdAnswer: "Chapecó"))
		santaCatarina.append(Asking(question: "Qual a comida típica mais famosa de Santa Catarina?", rightAnswer: "Chucrute", secondAnswer: "Bacon", thirdAnswer: "Biju salgado"))
		santaCatarina.append(Asking(question: "Qual o clima de Santa Catarina?", rightAnswer: "Subtropical úmido", secondAnswer: "Seco", thirdAnswer: "Equatorial"))
		santaCatarina.append(Asking(question: "Com qual país Santa Catarina possui fronteira?", rightAnswer: "Argentina", secondAnswer: "Uruguai", thirdAnswer: "Paraguai"))
		santaCatarina.append(Asking(question: "Qual o nome popular dado aos nativos de Santa Catarina?", rightAnswer: "Barrigas verdes", secondAnswer: "Pássaros do sul", thirdAnswer: "Pernas longas"))
	}
	
	func setEspiritoSanto() {
		espiritoSanto.append(Asking(question: "Qual a capital do Espírito Santo?", rightAnswer: "Vitória", secondAnswer: "Salvador", thirdAnswer: "Vila Velha"))
		espiritoSanto.append(Asking(question: "Qual a comida típica mais famosa do Espírito Santo?", rightAnswer: "Moqueca Capixaba", secondAnswer: "Pão de queijo", thirdAnswer: "Arroz carreteiro"))
		espiritoSanto.append(Asking(question: "Qual o clima do Espírito Santo?", rightAnswer: "Tropical úmido", secondAnswer: "Equatorial", thirdAnswer: "Mediterrâneo"))
		espiritoSanto.append(Asking(question: "Existem quantos habitantes no Espírito Santo?", rightAnswer: "Cerca de 4 milhões", secondAnswer: "Cerca de 6 milhões", thirdAnswer: "Cerca de 12 milhões"))
		espiritoSanto.append(Asking(question: "Qual o maior rio do Espírito Santo?", rightAnswer: "Rio Doce", secondAnswer: "Rio São Mateus", thirdAnswer: "Rio Jucu"))
	}
	
	func setMinasGerais() {
		minasGerais.append(Asking(question: "Qual a capital de Minas Gerais?", rightAnswer: "Belo Horizonte", secondAnswer: "Nova Lima", thirdAnswer: "Contagem"))
		minasGerais.append(Asking(question: "Qual a comida típica mais famosa de Minas Gerais?", rightAnswer: "Frango com Quiabo", secondAnswer: "Pinhão", thirdAnswer: "Polenta"))
		minasGerais.append(Asking(question: "Qual o clima de Minas Gerais?", rightAnswer: "Tropical", secondAnswer: "Semiárido", thirdAnswer: "Polar"))
		minasGerais.append(Asking(question: "Quantos municípios Minas Gerais possui?", rightAnswer: "853", secondAnswer: "576", thirdAnswer: "892"))
		minasGerais.append(Asking(question: "O que motivou a grande migração para Minas Gerais?", rightAnswer: "Descoberta do ouro", secondAnswer: "A exploração do pau-brasil", thirdAnswer: "A agricultura extensiva"))
	}
	
	func setRioDeJaneiro() {
		rioDeJaneiro.append(Asking(question: "Qual a capital do Rio de Janeiro?", rightAnswer: "Rio de Janeiro", secondAnswer: "Petrópolis", thirdAnswer: "Niterói"))
		rioDeJaneiro.append(Asking(question: "Qual a comida típica mais famosa do Rio de Janeiro?", rightAnswer: "Biscoito Globo com Mate", secondAnswer: "Caldo de carne", thirdAnswer: "Arroz doce"))
		rioDeJaneiro.append(Asking(question: "Qual o clima do Rio de Janeiro?", rightAnswer: "Semi-úmido e seco", secondAnswer: "Desértico e semiárido", thirdAnswer: "Temperado e mediterrâneo"))
		rioDeJaneiro.append(Asking(question: "Os naturais do estado do Rio de Janeiro são chamados de...", rightAnswer: "Fluminenses", secondAnswer: "Cariocas", thirdAnswer: "Rio de Janeirenses"))
		rioDeJaneiro.append(Asking(question: "Qual o nome da revolta que ocorreu no Rio de Janeiro, entre 10 e 16 de novembro de 1904?", rightAnswer: "Revolta da Vacina", secondAnswer: "Revolta do ouro", thirdAnswer: "Revolta da Chibata"))
	}
	
	func setSaoPaulo() {
		saoPaulo.append(Asking(question: "Qual a capital de São Paulo?", rightAnswer: "São Paulo", secondAnswer: "Campinas", thirdAnswer: "Osasco"))
		saoPaulo.append(Asking(question: "Qual a comida típica mais famosa de São Paulo?", rightAnswer: "Virado à paulista", secondAnswer: "Cuscuz", thirdAnswer: "Pizza"))
		saoPaulo.append(Asking(question: "Qual o clima de São Paulo?", rightAnswer: "Tropical", secondAnswer: "Equatorial", thirdAnswer: "Semiárido"))
		saoPaulo.append(Asking(question: "Quantos municípios tem São Paulo?", rightAnswer: "645", secondAnswer: "432", thirdAnswer: "453"))
		saoPaulo.append(Asking(question: "Qual o nome da Revolução que impediu o paulista Júlio Prestes de tomar posse da presidência?", rightAnswer: "Revolução de 1930", secondAnswer: "Revolução de 1940", thirdAnswer: "Revolução de 1970"))
	}
	
	func setDistritoFederal() {
		distritoFederal.append(Asking(question: "Qual a capital do Distrito Federal?", rightAnswer: "Brasília", secondAnswer: "São Paulo", thirdAnswer: "Florianópolis"))
		distritoFederal.append(Asking(question: "Qual a comida típica mais famosa do Distrito Federal?", rightAnswer: "Pato no Tucupi", secondAnswer: "Feijoada ", thirdAnswer: "Pamonha"))
		distritoFederal.append(Asking(question: "Qual o clima do Distrito Federal?", rightAnswer: "Tropical", secondAnswer: "Equatorial", thirdAnswer: "Subtropical"))
		distritoFederal.append(Asking(question: "Por que Brasília tem formato de avião?", rightAnswer: "Porque ela foi projetada para simbolizar a cruz", secondAnswer: "Porque ela foi projetada para sair voando", thirdAnswer: "Porque ela foi projetada para influenciar as demais cidades"))
		distritoFederal.append(Asking(question: "Por que Brasília não tem esquina?", rightAnswer: "O formato das ruas são de tesouras e dividas em quadras", secondAnswer: "O formato das ruas são de círculos e dividas em quadras", thirdAnswer: "O formato das ruas são de estrelas e dividas em quadras"))
	}
	
	func setGoias() {
		goias.append(Asking(question: "Qual a capital de Goiás?", rightAnswer: "Goiânia", secondAnswer: "João Pessoa", thirdAnswer: "Goiás"))
		goias.append(Asking(question: "Qual a comida típica mais famosa de Goiás?", rightAnswer: "Galinhada", secondAnswer: "Pudim salgado", thirdAnswer: "Arroz negro"))
		goias.append(Asking(question: "Qual o clima de Goiás?", rightAnswer: "Tropical semi-úmido", secondAnswer: "Mediterrâneo", thirdAnswer: "Temperado"))
		goias.append(Asking(question: "Quantos anos Goiás fez em 2020?", rightAnswer: "291 anos", secondAnswer: "120 anos", thirdAnswer: "230 anos"))
		goias.append(Asking(question: "O que significa o nome Goiás?", rightAnswer: "Indivíduo igual, de raça diferente", secondAnswer: "Indivíduo diferente, da mesma raça", thirdAnswer: "Criança que dorme"))
	}
	
	func setMatoGrosso() {
		matoGrosso.append(Asking(question: "Qual a capital do Mato Grosso?", rightAnswer: "Cuiabá", secondAnswer: "Consil", thirdAnswer: "Várzea Grande"))
		matoGrosso.append(Asking(question: "Qual a comida típica mais famosa de Mato Grosso?", rightAnswer: "Carne seca", secondAnswer: "Ovo mexido", thirdAnswer: "Arroz negro"))
		matoGrosso.append(Asking(question: "Qual o clima de Mato Grosso?", rightAnswer: "Tropical super-úmido de monção", secondAnswer: "Temperado super-úmido de monção", thirdAnswer: "Equatorial super-úmido de monção"))
		matoGrosso.append(Asking(question: "Quantos rios se encontram no Mato Grosso?", rightAnswer: "4", secondAnswer: "3", thirdAnswer: "5"))
		matoGrosso.append(Asking(question: "Como são chamados as pessoas que moram no Mato Grosso?", rightAnswer: "Mato-grossense", secondAnswer: "Mato-gronossense", thirdAnswer: "Mato-oeste"))
	}
	
	func setMatoGrossoDoSul() {
		matoGrossoDoSul.append(Asking(question: "Qual a capital do Mato Grosso do Sul?", rightAnswer: "Campo Grande", secondAnswer: "Cuiabá", thirdAnswer: "Dourados"))
		matoGrossoDoSul.append(Asking(question: "Qual a comida típica mais famosa do Mato Grosso do Sul?", rightAnswer: "Pacu assado", secondAnswer: "Frango assado", thirdAnswer: "Carne de panela"))
		matoGrossoDoSul.append(Asking(question: "Qual o clima do Mato Grosso do Sul?", rightAnswer: "Tropical semi-úmido", secondAnswer: "Seco", thirdAnswer: "Mediterrâneo"))
		matoGrossoDoSul.append(Asking(question: "O que significa a bandeira do Mato Grosso do Sul?", rightAnswer: "Simboliza o estado e riqueza produzida pelo trabalho", secondAnswer: "Simboliza prosperidade e conquista pelo trabalho", thirdAnswer: "Simboliza amor e compreensão pelo trabalho"))
		matoGrossoDoSul.append(Asking(question: "Pode-se afirmar que o Mato Grosso do Sul faz fronteira com os seguintes países...", rightAnswer: "Paraguai e Peru", secondAnswer: "Paraguai e Uruguai ", thirdAnswer: "Paraguai e Bolívia"))
	}
	
	func setStates() {
		setAcre()
		setAlagoas()
		setAmazonas()
		setPara()
		setAmapa()
		setRoraima()
		setRondonia()
		setBahia()
		setCeara()
		setMaranhao()
		setParaiba()
		setPernambuco()
		setPiaui()
		setTocantins()
		setRioGrandeDoNorte()
		setSergipe()
		setParana()
		setRioGrandeDoSul()
		setSantaCatarina()
		setEspiritoSanto()
		setMinasGerais()
		setRioDeJaneiro()
		setSaoPaulo()
		setGoias()
		setDistritoFederal()
		setMatoGrosso()
		setMatoGrossoDoSul()
	}
	
	func getIndex(inputedState: String) -> Int{
		for (index, state) in flagImages.enumerated() {
			if inputedState == state {
				return index
			}
		}
		return -1
	}
	
	func askingState(state: [Asking], initial: String) -> (Asking?, ModifiedAsking?)  {

		let stateIndex = getIndex(inputedState: initial)
		
		var choosenAsking: Asking?
		
		if (StateManager.getStateRightAnswers(state: stateIndex) + 1) > 4 {
			choosenAsking = state[(StateManager.getStateRightAnswers(state: stateIndex) + 1)%4]
		} else {
			choosenAsking = state[(StateManager.getStateRightAnswers(state: stateIndex) + 1)]
		}
		
		var possibleAnswers: [String?] = [choosenAsking?.rightAnswer, choosenAsking?.secondAnswer, choosenAsking?.thirdAnswer]
		
		let firstButton: String! = possibleAnswers.randomElement()!
		for index in 0...2 {
			if possibleAnswers[index] == firstButton {
				possibleAnswers.remove(at: index)
				break
			}
		}
		
		let secondButton: String! = possibleAnswers.randomElement()!
		for index in 0...2 {
			if possibleAnswers[index] == secondButton {
				possibleAnswers.remove(at: index)
				break
			}
			
		}
		
		let thirdButton: String! = possibleAnswers.randomElement()!
		for index in 0...2 {
			if possibleAnswers[index] == thirdButton {
				possibleAnswers.remove(at: index)
				break
			}
		}
		
		let modifiedAsking = ModifiedAsking(question: choosenAsking!.question, firstAnswer: firstButton, secondAnswer: secondButton, thirdAnswer: thirdButton)
		
		return(choosenAsking, modifiedAsking)
	}
	
	func generateAsking(state: String) -> (Asking?, ModifiedAsking?) {
		switch state {
			case "AC":
				return askingState(state: acre, initial: state)
			case "AP":
				return askingState(state: amapa, initial: state)
			case "AM":
				return askingState(state: amazonas, initial: state)
			case "PA":
				return askingState(state: para, initial: state)
			case "RO":
				return askingState(state: rondonia, initial: state)
			case "RR":
				return askingState(state: roraima, initial: state)
			case "TO":
				return askingState(state: tocantins, initial: state)
			case "AL":
				return askingState(state: alagoas, initial: state)
			case "BA":
				return askingState(state: bahia, initial: state)
			case "CE":
				return askingState(state: ceara, initial: state)
			case "MA":
				return askingState(state: maranhao, initial: state)
			case "PB":
				return askingState(state: paraiba, initial: state)
			case "PE":
				return askingState(state: pernambuco, initial: state)
			case "PI":
				return askingState(state: piaui, initial: state)
			case "RN":
				return askingState(state: rioGrandeDoNorte, initial: state)
			case "SE":
				return askingState(state: sergipe, initial: state)
			case "PR":
				return askingState(state: parana, initial: state)
			case "RS":
				return askingState(state: rioGrandeDoSul, initial: state)
			case "SC":
				return askingState(state: santaCatarina, initial: state)
			case "ES":
				return askingState(state: espiritoSanto, initial: state)
			case "MG":
				return askingState(state: minasGerais, initial: state)
			case "RJ":
				return askingState(state: rioDeJaneiro, initial: state)
			case "SP":
				return askingState(state: saoPaulo, initial: state)
			case "DF":
				return askingState(state: distritoFederal, initial: state)
			case "GO":
				return askingState(state: goias, initial: state)
			case "MT":
				return askingState(state: matoGrosso, initial: state)
			default:
				return askingState(state: matoGrossoDoSul, initial: state)
		}
	}
	
	func setBackground(state: String) -> String {
		
		if state == "AC" || state == "AP" || state == "AM" || state == "PA" || state == "RO" || state == "RR" || state == "TO" {
			return "Norte-background"
			
		} else if state == "AL" || state == "BA" || state == "CE" || state == "MA" || state == "PB" || state == "PE" || state == "PI" || state == "RN" || state == "SE" {
			return "Nordeste-background"
			
		} else if state == "PR" || state == "RS" || state == "SC" {
			return "Sul-background"
			
		} else if state == "ES" || state == "RJ" || state == "SP" || state == "MG" {
			return "Sudeste-background"
			
		} else {
			return "Centro-oeste-background"
		}
	}
	
	func setMusic(state: String) -> String {
		if state == "AC" || state == "AP" || state == "AM" || state == "PA" || state == "RO" || state == "RR" || state == "TO" {
			return "Efeito-NORTE"
			
		} else if state == "AL" || state == "BA" || state == "CE" || state == "MA" || state == "PB" || state == "PE" || state == "PI" || state == "RN" || state == "SE" {
			return "Efeito-NORDESTE"
			
		} else if state == "PR" || state == "RS" || state == "SC" {
			return "Efeito-SUL"
			
		} else if state == "ES" || state == "RJ" || state == "SP" || state == "MG" {
			return "Efeito-SUDESTE"
			
		} else {
			return "Efeito-CENTRO-OESTE"
		}
	}
}

