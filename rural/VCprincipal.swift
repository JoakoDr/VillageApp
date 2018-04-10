//
//  VCprincipal.swift
//  rural
//
//  Created by DAVID ANGULO CORCUERA on 5/4/18.
//  Copyright © 2018 DAVID ANGULO CORCUERA. All rights reserved.
//

import UIKit

class VCprincipal: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet var coleccion: UICollectionView?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Int(DataHolder.sharedInstance.numeroCeldas);
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CVcolection = collectionView.dequeueReusableCell(withReuseIdentifier: "idcelda2", for: indexPath) as! CVcolection
        if indexPath.row == 0{
            cell.lblNombre?.text = " San Martin"
            cell.imagen?.image = UIImage(named : "1.jpg")
        }
        else if indexPath.row == 1{
            cell.lblNombre?.text = " Monterrubio"
            cell.imagen?.image = UIImage(named : "2.jpg")
        }
        else if indexPath.row == 2{
            cell.lblNombre?.text = " Cercedilla"
            cell.imagen?.image = UIImage(named : "3.jpg")
        }
        else if indexPath.row == 3{
            cell.lblNombre?.text = " Los molinos"
            cell.imagen?.image = UIImage(named : "4.jpg")
        }
        else if indexPath.row == 4{
            cell.lblNombre?.text = " Canalejas"
            cell.imagen?.image = UIImage(named : "5.jpg")
        }
        else if indexPath.row == 5{
            cell.lblNombre?.text = " "
            
        }
        
        return cell
      }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
