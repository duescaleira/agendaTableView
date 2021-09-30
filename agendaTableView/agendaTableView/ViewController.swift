//
//  ViewController.swift
//  agendaTableView
//
//  Created by Eduardo Escaleira on 30/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var consultaTextField: UITextField!
    
    private let service = Service()
    private var contatos: [Contato] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        consultaTextField.delegate = self
       
        loadContatos()
        
    }
    
    private func loadContatos() {
        contatos = service.getContatos()
    }

    @IBAction func consultaButton(_ sender: UIButton) {
    }
    
    private func validaTextField(textfield: UITextField) {
    }
    
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        validaTextField(textfield: textField)
    }
}


extension ViewController: UITableViewDelegate {
}




extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contatos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "agendaTableViewCell", for: indexPath) as? AgendaTableViewCell {
            cell.setup(contato: contatos[indexPath.row])
            return cell
        }
            
            
        
        return UITableViewCell()
    }
    

    
}

