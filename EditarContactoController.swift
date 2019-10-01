//
//  EditarContactoController.swift
//  
//
//  Created by Alumno on 10/1/19.
//

import Foundation
import UIKit

class EditarContactocontroller : UIViewController {
    
    var contacto : Contacto?
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtTelefono: UITextField!
    
    override func viewDidLoad() {
        txtTelefono.text = contacto!.telefono
        txtNombre.text = contacto!.nombre
    }
    
    @IBAction func dotapGuardar(_ sender: Any) {
    }
}
