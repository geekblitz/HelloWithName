//
//  ViewController.swift
//  Hola
//
//  Created by Martín G. Morgado on 1/19/16.
//  Copyright © 2016 geekblitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var texto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saludar(sender: AnyObject) {
        
        let nombre : String = (texto.text)!
        if nombre.isEmpty{
            let alert = UIAlertController(title: "Error", message: "Introduce tu nombre en el cuadro de texto", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController (alert, animated: true, completion: nil)
        }
        else{
            //nombre escrito
            //etiqueta.text = "¡ Hola " + String(nombre) nombre escrito
            etiqueta.text = "¡ Hola \(nombre) !"
            texto.text = "🤓"
            //modif 1 emoji
        }
    }


}

