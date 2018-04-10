//
//  VCRegister.swift
//  rural
//
//  Created by DAVID ANGULO CORCUERA on 3/4/18.
//  Copyright © 2018 DAVID ANGULO CORCUERA. All rights reserved.
//

import UIKit
import FirebaseAuth
class VCRegister: UIViewController {
    
    @IBOutlet var txtEmail:UITextField?
    @IBOutlet var txtPassword2:UITextField?
    @IBOutlet var txtUser:UITextField?
    @IBOutlet var txtPassword:UITextField?
    @IBOutlet var btnRegistro:UIButton?
    @IBOutlet var btnVolver:UIButton?
    @IBAction func eventoClickLogin()  {
        if !((txtUser?.text?.isEmpty)! || (txtPassword?.text?.isEmpty)! || (txtPassword2?.text?.isEmpty)! || (txtEmail?.text?.isEmpty)!) {
            if(txtPassword?.text == txtPassword2?.text ){
                Auth.auth().createUser(withEmail: (txtEmail?.text)!, password: (txtPassword?.text)!){ (user, error) in
                    if (user != nil) {
                        print("Te Registraste !"+(user?.uid)!)
                        self.performSegue(withIdentifier: "transicionregistro", sender: self)
                    }else
                    {
                        print(error!)
                
                    }
                }
                
                
            };
        }
        
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
