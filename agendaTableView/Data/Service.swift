//
//  Service.swift
//  agendaTableView
//
//  Created by Eduardo Escaleira on 30/09/21.
//

import Foundation

class Service {
    
    private let contatos: [Contato] = [
        .init(nome: "Eduardo", idade: 33, endereco: "Alameda sem numero", telefone: 332132131, email: "eduardo@dh.com", image: "eduardo_image"),
        .init(nome: "Pedro", idade: 21, endereco: "Rua dos não sei", telefone: 9912313, email: "pedro@dh.com", image: "pedro_image"),
        .init(nome: "Angela", idade: 3, endereco: "Rua Miau", telefone: 321312312, email: "angela@dh.com", image: "angela_image"),
        .init(nome: "Marie", idade: 7, endereco: "Rua Miau Miau", telefone: 4324321, email: "marie@dh.com", image: "marie_image")
    ]
    
    
    func getContatos() -> [Contato] {
        return contatos
    }
    
    func filterContatos(query: String) -> [Contato] {
        return []
    }
}
