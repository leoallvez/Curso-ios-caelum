//
//  ContadoDao.swift
//  ContatosIP67
//
//  Created by ios7818 on 03/11/18.
//  Copyright © 2018 Caelum. All rights reserved.
//

import UIKit
import Foundation

class ContatoDao: NSObject {
    static private var defaultDAO: ContatoDAO!
    var contato: Array<Contato>
    
    func adiciona(_contado:contado) {
        contato.append(contato)
    }
    
    static func sharedInstace() -> ContatoDao {
        if defaultDAO == nil {
            defaultDAO = ContatoDao();
        }
        return defaultDAO
    }
    
    override private init() {
        self.contato = Array()
        super.init()
    }
}
