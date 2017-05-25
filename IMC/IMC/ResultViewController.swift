//
//  ResultViewController.swift
//  CalculaIMC
//
//  Created by Edgar Sócrates on 22/04/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var mensagem:String=""
    
    @IBOutlet weak var labelResultado: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResultado.text = mensagem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
