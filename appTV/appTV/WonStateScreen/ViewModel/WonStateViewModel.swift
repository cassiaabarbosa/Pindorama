//
//  WonStateViewModel.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 17/07/20.
//  Copyright © 2020 com.cassiaabarbosa. All rights reserved.
//

import Foundation
class WonStateViewModel {
	
	var flagImages: [String] = ["AC", "AP", "AM", "PA", "RO", "RR", "TO", "AL", "BA", "CE", "MA", "PB", "PE", "PI", "RN", "SE", "PR", "RS", "SC", "ES", "MG", "RJ","SP", "DF", "GO", "MT", "MS"]
	
	
	func generateVisuals(state: String) -> (String, String, String) {
		switch state {
			case "AC":
				return ("Parabéns! Você agora é Governador/a do Acre!", "Norte-background", "AC")
			case "AP":
				return ("Parabéns! Você agora é Governador/a do Amapá!", "Norte-background", "AP")
			case "AM":
				return ("Parabéns! Você agora é Governador/a do Amazonas!", "Norte-background", "AM")
			case "PA":
				return ("Parabéns! Você agora é Governador/a do Pará!","Norte-background", "PA")
			case "RO":
				return ("Parabéns! Você agora é Governador/a de Rondônia!", "Norte-background", "RO")
			case "RR":
				return ("Parabéns! Você agora é Governador/a de Roraima!", "Norte-background", "RR")
			case "TO":
				return ("Parabéns! Você agora é Governador/a de Tocantins!", "Norte-background", "TO")
			case "AL":
				return ("Parabéns! Você agora é Governador/a de Alagoas!", "Nordeste-background", "AL")
			case "BA":
				return ("Parabéns! Você agora é Governador/a da Bahia!", "Nordeste-background", "BA")
			case "CE":
				return ("Parabéns! Você agora é Governador/a do Ceará!", "Nordeste-background", "CE")
			case "MA":
				return ("Parabéns! Você agora é Governador/a de Manaus!", "Nordeste-background", "MA")
			case "PB":
				return ("Parabéns! Você agora é Governador/a da Paraíba!", "Nordeste-background", "PB")
			case "PE":
				return ("Parabéns! Você agora é Governador/a de Pernambuco!", "Nordeste-background", "PE")
			case "PI":
				return ("Parabéns! Você agora é Governador/a do Piauí!", "Nordeste-background", "PI")
			case "RN":
				return ("Parabéns! Você agora é Governador/a do Rio Grande do Norte!", "Nordeste-background", "RN")
			case "SE":
				return ("Parabéns! Você agora é Governador/a de Sergipe!", "Nordeste-background", "SE")
			case "PR":
				return ("Parabéns! Você agora é Governador/a do Paraná!", "Sul-background", "PR")
			case "RS":
				return ("Parabéns! Você agora é Governador/a do Rio Grande do Sul!", "Sul-background", "RS")
			case "SC":
				return ("Parabéns! Você agora é Governador/a de Santa Catarina!", "Sul-background", "SC")
			case "ES":
				return ("Parabéns! Você agora é Governador/a do Espírito Santo!", "Sudeste-background", "ES")
			case "MG":
				return ("Parabéns! Você agora é Governador/a de Minas Gerais!", "Sudeste-background", "MG")
			case "RJ":
				return ("Parabéns! Você agora é Governador/a do Rio de Janeiro!", "Sudeste-background", "RJ")
			case "SP":
				return ("Parabéns! Você agora é Governador/a de São Paulo!", "Sudeste-background", "SP")
			case "DF":
				return ("Parabéns! Você agora é Governador/a do Distrito Federal!", "Centro-oeste-background", "DF")
			case "GO":
				return ("Parabéns! Você agora é Governador/a de Goiás!", "Centro-oeste-background", "GO")
			case "MT":
				return ("Parabéns! Você agora é Governador/a de Mato Gosso!", "Centro-oeste-background", "MT")
			default:
				return ("Parabéns! Você agora é Governador/a de Mato Grosso so Sul!", "Centro-oeste-background", "MS")
		}
	}
	
}
