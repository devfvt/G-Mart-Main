//
//  LoginView.swift
//  G-Mart
//
//  Created by Indrajit Chavda on 28/04/19.
//  Copyright © 2019 Indrajit Chavda. All rights reserved.
//

import UIKit


class LoginView:ParentViewController{
    
    //MARK: Class properties
    let loginViewModel = LoginViewModel()
    
    
    let imageViewTop:UIImageView={
        let iv = UIImageView()
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.backgroundColor = .blue
        return iv
    }()
    
    let textFieldEmail:
    
    
    
    //MARK: Life cycle methods
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    //MARK: Other methods
  
    func setUpViews(){
        title = "sign_in".localize
        self.view.backgroundColor = Colors.current.background1
        
        
        self.view.addSubviews(views: [imageViewTop])
        
        imageViewTop.setAnchors(top: self.view.topAnchor, bottom: nil, left: self.view.leftAnchor, right: self.view.rightAnchor)
        imageViewTop.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.2).isActive = true
        
        
      
    }
    
    
    
    //MARK: Action methods
    
    func login(){
        
        
        try? loginViewModel.loginRequest(email: "shanil.soni19@gmail.com", password: "123456")
       
    }
    
}


