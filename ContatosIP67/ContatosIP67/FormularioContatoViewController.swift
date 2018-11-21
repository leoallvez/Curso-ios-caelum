//
//  ViewController.swift
//  ContatosIP67
//
//  Created by ios7818 on 03/11/18.
//  Copyright © 2018 Caelum. All rights reserved.
//

import UIKit

class FormularioContatoViewController: UIViewController {
    var dao: ContatoDAO
    var contato: Contato!
    var delegate: FormularioContatoViewControllerDelegate?
    
    required init?(coder aDecoder: NSCoder){
        self.dao = ContatoDAO.sharedInstance()
        super.init(coder: aDecoder)
    }
    
    @IBOutlet var nome:     UITextField!
    @IBOutlet var telefone: UITextField!
    @IBOutlet var endereco: UITextField!
    @IBOutlet var site:     UITextField!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if contato != nil {
            self.nome.text = contato.nome
            self.telefone.text = contato.telefone
            self.endereco.text = contato.endereco
            self.site.text = contato.site
            
            let botaoAlterar = UIBarButtonItem(title: "Confirma" , style: .plain, target: self, action: #selector(atualizaContato))
            
            self.navigationItem.rightBarButtonItem = botaoAlterar
        }
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func criarContato() {
        self.pegaDadosDoFormulario()
        dao.adiciona(contato)
        
        self.delegate?.contatoAdicionado(contato)
        
        _ = self.navigationController?.popViewController(animated: true)
        

    }
    
    func pegaDadosDoFormulario () {
        
        if contato == nil {
            self.contato = Contato()
        }
        
        self.contato.nome = self.nome.text!
        self.contato.telefone = self.telefone.text!
        self.contato.endereco = self.endereco.text!
        self.contato.site = self.site.text!
    }
    
    func atualizaContato() {
        self.pegaDadosDoFormulario()
        
        self.delegate?.contatoAtualizado(contato)
        _ = self.navigationController?.popViewController(animated: true)
    }
    
   
    
    


}

