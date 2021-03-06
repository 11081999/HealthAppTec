//
//  LoginViewController.swift
//  HealthApp
//
//  Created by user189674 on 11/1/21.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "LogIn"

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logInButtonAction(_ sender: Any) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            
            Auth.auth().signIn(withEmail: email, password: password){
                (result, error) in
                
                if let result = result, error == nil {
                    
                    //self.navigationController?
                        //.pushViewController(HomeViewController(email:
                        //result.user.email!, provider: .basic), animated: true)
                    
                }else{
                    
                    let alertController = UIAlertController(title: "Error",
                        message:
                            "Se produjo un error en el Login", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertController, animated: true, completion: nil)
                    
                }
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
