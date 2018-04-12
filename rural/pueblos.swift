//
//  pueblos.swift
//  rural
//
//  Created by JOAQUIN DIAZ RAMIREZ on 12/4/18.
//  Copyright © 2018 DAVID ANGULO CORCUERA. All rights reserved.
//

import UIKit

class pueblos: NSObject {
    
    var sNombre:String?
    var sPoblacion:String?
    var sProvincia:String?
    var sImagen:UIImageView?
    
    
    init(valores:[String:AnyObject]){
        sNombre=valores["Nombre"] as! String
        sPoblacion=valores["Poblacion"] as! String
        sProvincia=valores["Provincia"] as! String
        sImagen=valores["img"] as! UIImageView
        
    }

}
