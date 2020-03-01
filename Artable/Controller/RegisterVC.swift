//
//  RegisterVC.swift
//  Artable
//
//  Created by PROGRAMAR on 29/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit
import Firebase

class RegisterVC: UIViewController, UITextFieldDelegate {

//    Outlets
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var confirmPassTxt: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var passCheckeIma: UIImageView!
    @IBOutlet weak var confirmPassCheckImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        confirmPassTxt.delegate = self

        passwordText.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        
        confirmPassTxt.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
    }
    
    
    @objc func textFieldDidChange(_ textFiel: UITextField){
        
        guard let passTxt = passwordText.text  else { return }
        
        
        if textFiel == confirmPassTxt{
            passCheckeIma.isHidden = false
            confirmPassCheckImg.isHidden = false
        }else{
            if passTxt.isEmpty{
                passCheckeIma.isHidden = true
                confirmPassCheckImg.isHidden = true
                confirmPassTxt.text = ""
            }
        }
        
        if passwordText.text == confirmPassTxt.text{
            passCheckeIma.image = UIImage(named: AppImages.GreenCheck)
            confirmPassCheckImg.image = UIImage(named: AppImages.GreenCheck)
        }
        else{
            passCheckeIma.image = UIImage(named:AppImages.RedCheck)
            confirmPassCheckImg.image = UIImage(named: AppImages.RedCheck)
        }
    }
    
    
    
    
    
    @IBAction func registerClicked(_ sender: Any) {
    
        guard let email = emailTxt.text , email.isNotEmpty,
            let username = usernameTxt.text , username.isNotEmpty,
            let password = passwordText.text , password.isNotEmpty else {return}
        
        activityIndicator.startAnimating()
        
    Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
        
        if let error = error {
            debugPrint(error)
            return
        }
        self.activityIndicator.stopAnimating()
        print("Succesfully")
      
        }
    
    }
}
