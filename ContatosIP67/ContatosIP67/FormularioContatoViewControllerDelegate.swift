//
//  FormularioContatoViewControllerDelegate.swift
//  ContatosIP67
//
//  Created by ios7531 on 17/11/18.
//  Copyright © 2018 Caelum. All rights reserved.
//

import Foundation

protocol FormularioContatoViewControllerDelegate {
    
    func contatoAtualizado(_ contato:Contato)
    func contatoAdicionado(_ contato:Contato)
}
