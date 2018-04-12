//
//  tablas.swift
//  rural
//
//  Created by DAVID ANGULO CORCUERA on 5/4/18.
//  Copyright © 2018 DAVID ANGULO CORCUERA. All rights reserved.
//
//-> return
import UIKit
import Firebase
import FirebaseDatabase

class tablas:
UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(DataHolder.sharedInstance.arPueblos==nil){
            return 0
        }else{
        
        return (DataHolder.sharedInstance.arPueblos?.count)!
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "idCelda") as! celdaPrototiopo
        celda.lblNombre?.text = DataHolder.sharedInstance.nombreCelda(numero: indexPath.row) as String
        let puebloi:pueblos=DataHolder.sharedInstance.arPueblos![indexPath.row]
        celda.lblNombre?.text=puebloi.sNombre
        return celda
    }
    
    @IBOutlet var tablas:UITableView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataHolder.sharedInstance.firestoreDB?.collection("pueblos").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    
                    
                    
                    print("\(document.documentID) => \(document.data())")
                }
            }
        }
        
       
        DataHolder.sharedInstance.firDataBasRef.child("pueblos").observe(DataEventType.value, with: { (snapshot) in
            let arTemp = snapshot.value as? Array<AnyObject>
            //let pueblos0=pueblos(valores : arTemp?[0] as! [String:AnyObject])
            if(DataHolder.sharedInstance.arPueblos == nil){
                //DataHolder.sharedInstance.arPueblos = Array<pueblos>
            }
            for co in arTemp! as [AnyObject]{
                let puebloi = pueblos(valores: co as! [String:AnyObject])
                DataHolder.sharedInstance.arPueblos?.append(puebloi)
            }
         
         self.tablas?.reloadData()
           // let coches0 = arTemp?[0] as? [String:AnyObject]
        //print("lo descargado es: ",0)
        })
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
