//
//  AgendaTableViewCell.swift
//  agendaTableView
//
//  Created by Eduardo Escaleira on 30/09/21.
//

import UIKit

class AgendaTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    
    func setup(contato: Contato) {
        nameLabel.text = contato.nome
    }

}
