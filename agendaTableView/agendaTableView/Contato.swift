//
//  Contato.swift
//  agendaTableView
//
//  Created by Eduardo Escaleira on 30/09/21.
//

import UIKit

class Contato {
    
    var nome: String
    var idade: Int
    var endereco: String
    var telefone: Int
    var email: String
    var image: String
    
    init(nome: String, idade: Int, endereco: String, telefone: Int, email: String, image: String) {
        self.nome = nome
        self.idade = idade
        self.endereco = endereco
        self.telefone = telefone
        self.email = email
        self.image = image
    }
}
