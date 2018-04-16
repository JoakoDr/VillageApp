//
//  pueblos.swift
//  rural
//
//  Created by JOAQUIN DIAZ RAMIREZ on 12/4/18.
//  Copyright © 2018 DAVID ANGULO CORCUERA. All rights reserved.
//

import UIKit

class pueblos: NSObject {
    
    let IDNombre = "Nombre"
    let IDPoblacion = "Poblacion"
    let IDProvincia = "Provincia"
    //let IDImagen = "img"
    
    
    var sID:String?
    var sNombre:String?
    var sPoblacion:String?
    var sProvincia:String?
    //var sImagen:UIImageView?
    
    
    func setMap(valores:[String:Any]){
        sNombre=valores[IDNombre] as? String
        sPoblacion=valores[IDPoblacion] as? String
        sProvincia=valores[IDProvincia] as? String
       // sImagen=(valores[IDImagen] as! UIImageView)
        
    }
    func getMap()->[String:Any]
    {
        return[
            IDNombre: sNombre as Any,
            IDPoblacion: sPoblacion as Any,
            IDProvincia: sProvincia as Any,
            //IDImagen: sImagen as Any
        ]
    }

}
