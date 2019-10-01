//
//  ViewController.swift
//  Informacion
//
//  Created by Alumno on 10/1/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var tvContactos: UITableView!
    var contactos : [Contacto] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        contactos.append(Contacto(nombre: "jose", telefono: "6323214490", direccion: "Guerrero ·25", correo: "marcosrodso@gmail.com", foto: "foto1"))
        contactos.append(Contacto(nombre: "miguel", telefono: "6323214490", direccion: "Guerrero ·25", correo: "marcosrodso@gmail.com", foto: "foto2"))
        contactos.append(Contacto(nombre: "ramiro", telefono: "6323214490", direccion: "Guerrero ·25", correo: "marcosrodso@gmail.com", foto: "foto3"))
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as? CeldaContactoController
        
        celda?.imgContacto.image = UIImage(named: contactos[indexPath.row].foto!)
        celda?.lblNombre.text = contactos[indexPath.row].nombre
        
        if (contactos[indexPath.row].telefono != nil) {
            celda?.lblTelefono.text = contactos[indexPath.row].telefono
        } else {
            celda?.lblTelefono.text = ""
        }
        
        
        return celda!
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEditar" {
            let destino = segue.destination as? EditarContactocontroller
            destino?.contacto = contactos[tvContactos.indexPathForSelectedRow!.row]
            
            
        }
    }

}

