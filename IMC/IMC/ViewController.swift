//
//  ViewController.swift
//  CalculaIMC
//
//  Created by Edgar Sócrates on 22/04/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {    
   
    @IBOutlet weak var campoAltura: UITextField!
    @IBOutlet weak var campoPeso: UITextField!
    @IBOutlet weak var sexo: UISegmentedControl!
   
    var altura:Float = 0.0
    var peso:Float = 0.0
    var exibirTela:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    

    @IBAction func calculaIMCResult(_ sender: Any) {
        altura = Float(campoAltura.text!)!
        peso = Float(campoPeso.text!)!
        let imc:Float = peso / (altura*altura)
        
        if(sexo.selectedSegmentIndex == 0){
            exibirTela = homem(resultado:imc)
        }else{
            exibirTela = mulher(resultado:imc)
        }
        performSegue(withIdentifier: "segueResultado", sender: nil)
        
    }
    
    
    func homem(resultado:Float) -> String {
        var resposta:String=""
        
        if(resultado < 20.7){
            resposta = "Homem abaixo do Peso"
        }else if(resultado >= 20.7 && resultado < 26.4){
            resposta = "Homem peso ideal"
        }else if(resultado >= 26.4 && resultado < 27.8){
            resposta = "Homem com obesidade tipo 1"
        }else if(resultado >= 27.8 && resultado < 31.1){
            resposta = "Homem com obesidade tipo 2"
        }else if(resultado >= 31.1){
            resposta = "Homem com obesidade Morbida"
        }
        return resposta
    }
    
    
    func mulher(resultado:Float) -> String {
        var resposta:String=""
        
        if(resultado < 19.1){
            resposta = "Mulher - Abaixo do Peso"
        }else if(resultado >= 19.1 && resultado < 25.8){
            resposta = "Mulher com peso ideal"
        }else if(resultado >= 25.8 && resultado < 27.3){
            resposta = "Mulher com obesidade tipo 1"
        }else if(resultado >= 27.3 && resultado < 31.1){
            resposta = "Mulher com obesidade tipo 2"
        }else if(resultado >= 31.1){
            resposta = "Mulher com obesidade Morbida"
        }
        return resposta
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
        case "segueResultado":
            let destino:ResultViewController = segue.destination as! ResultViewController
            destino.mensagem = exibirTela
            break            
        default: return;
        }
    }
    
}






