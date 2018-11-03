//
//  ViewController.swift
//  ContatosIP67
//
//  Created by ios7818 on 03/11/18.
//  Copyright © 2018 Caelum. All rights reserved.
//

import UIKit

class FormularioContatoViewController: UIViewController {
    
    var dao:ContatoDao
    

    
    @IBOutlet var nome:     UITextField!
    @IBOutlet var telefone: UITextField!
    @IBOutlet var endereco: UITextField!
    @IBOutlet var siteText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pegaDadosDoFormulario() {
        let contato: Contato = Contato()
        contato.nome = self.nome.text!
        contato.telefone = self.telefone.text!
        contato.endereco = self.endereco.text!
        contato.site = self.siteText.text!
        print(contato)
        //print("Nome: \(nome), Telefone: \(telefone), Endereco: \(endereco), Site: \(site)")
        
    }

}

