//
//  ViewController.swift
//  RecipeApp
//
//  Created by DCS on 24/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let myLabel:UILabel = {
        let label=UILabel()
        label.text = "My Recipe"
        label.font = .systemFont(ofSize : 49)
        return label
    }()
    
    private let myTextfiled : UITextField = {
        let textfiled = UITextField()
        textfiled.placeholder = "Enter User Name"
        textfiled.textAlignment = .center
        textfiled.backgroundColor = .white
        return textfiled
    }()
    
    private let myTextfiledpassword : UITextField = {
        let textfiled = UITextField()
        textfiled.placeholder = "Enter Password"
        textfiled.textAlignment = .center
        textfiled.backgroundColor = .white
        textfiled.isSecureTextEntry = true
        return textfiled
    }()
    
    private let loginButton:UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(handleLoggin), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"img")!)
        view.addSubview(myLabel)
        view.addSubview(myTextfiled)
        view.addSubview(myTextfiledpassword)
        view.addSubview(loginButton)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame=CGRect(x: 90, y: 100, width: view.width-40, height: 40)
        myTextfiled.frame=CGRect(x: 20, y: myLabel.bottom + 90, width: view.width-40, height: 40)
        myTextfiledpassword.frame=CGRect(x: 20, y: myTextfiled.bottom + 30, width: view.width-40, height: 40)
        loginButton.frame=CGRect(x: 20, y: myTextfiledpassword.bottom+30, width: view.width-40, height: 40)
    }
    
    @objc func handleLoggin(){
        print("Clicking")
        let vc = Recipebord()
        
        navigationController?.pushViewController(vc, animated: true)
    }

}

