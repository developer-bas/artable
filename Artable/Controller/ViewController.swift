//
//  ViewController.swift
//  Artable
//
//  Created by PROGRAMAR on 28/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        let storyboard = UIStoryboard(name: Storyboard.LoginStoryboard, bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "loginVC")
        present(controller, animated: true, completion: nil)
    }
    
   
    
}

