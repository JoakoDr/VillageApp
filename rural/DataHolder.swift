//
//  DataHolder.swift
//  rural
//
//  Created by MacMini on 9/4/18.
//  Copyright © 2018 DAVID ANGULO CORCUERA. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class DataHolder: NSObject {
    static let sharedInstance:DataHolder = DataHolder()
    var numeroCeldas:UInt=6;
    var firDataBasRef: DatabaseReference!
    //var arpueblos
    
    
    var firestoreDB:Firestore?
    
    var arPueblos:Array<pueblos>?
    func initFirebase() {
        FirebaseApp.configure()
        var db = Firestore.firestore()
        firestoreDB=Firestore.firestore()
        firDataBasRef = Database.database().reference()
    }
    func nombreCelda(numero:Int) -> NSString {
        if numero == 0{
            return  " San Martin"
            
        }
        else if numero == 1{
            return  " Monterrubio"
            
        }
        else if numero == 2{
            return  " Cercedilla"
            
        }
        else if numero == 3{
            return  " Los Molinos"
            
        }
        else if numero == 4{
            return  " Canalejas"
            
        }
        return  " "
   
    }
}
