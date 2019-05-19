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
    
    let textFieldEmail:CustomTextfield={
        let tf = CustomTextfield()
        tf.placeholder = "email".localize
        tf.keyboardType = .emailAddress
        return tf
    }()
    
    let textFieldPassword:CustomTextfield={
        let tf = CustomTextfield()
        tf.placeholder = "password".localize
        tf.isSecureTextEntry = true
        return tf
    }()
    
    lazy var buttonSignIn:UIButton={
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(self.buttonSignInClicked), for: .touchUpInside)
        button.setTitle("sign_in".localize, for: .normal)
        button.tintColor = Colors.current.text2
        button.backgroundColor = Colors.current.button1
        button.layer.masksToBounds = true
        button.layer.cornerRadius = AppConstants.buttonRadius
        
        button.titleLabel?.font = AppFonts.get(name: .bold, size: .h7)
        return button
    }()
  
    lazy var buttonForgotPassword:UIButton={
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(self.buttonForgotPasswordClicked), for: .touchUpInside)
        button.setTitle("forgot_password_quest".localize, for: .normal)
        button.tintColor = Colors.current.text1
        button.titleLabel?.font = AppFonts.get(name: .light, size: .h9)
        return button
    }()
    
    
    lazy var buttonFacebook:UIButton={
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(self.buttonFacebookClicked), for: .touchUpInside)
        button.tintColor = Colors.current.text2
        button.setImage(#imageLiteral(resourceName: "facebook"), for: .normal)
        button.backgroundColor = Colors.current.button2
        button.layer.masksToBounds = true
        button.imageView?.contentMode = .scaleAspectFit
        button.layer.cornerRadius = AppConstants.buttonRadius
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 3, bottom: 5, right: 3 )
        return button
    }()
    lazy var buttonGoogle:UIButton={
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(self.buttonGoogleClicked), for: .touchUpInside)
        button.tintColor = Colors.current.text2
        button.setImage(#imageLiteral(resourceName: "google").withRenderingMode(.alwaysOriginal), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.layer.masksToBounds = true
        button.layer.cornerRadius = AppConstants.buttonRadius
        button.imageEdgeInsets = UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3 )
        return button
    }()
    
    
    let seperator1:UIView={
        let view = UIView()
        view.backgroundColor = Colors.current.seperator1
        return view
    }()
    
    let seperator2:UIView={
        let view = UIView()
        view.backgroundColor = Colors.current.seperator1
        return view
    }()
    
    
    let labalOr:UILabel={
        let label = UILabel()
        label.text = "or".localize.uppercased()
        label.textColor = Colors.current.text4
        label.font = AppFonts.get(name: .medium, size: .h7)
        return label
        
    }()
    
    lazy var viewOr:UIView={
        let sv = UIView()
        sv.addSubviews(views: [self.seperator1,self.labalOr,self.seperator2])
       
        self.seperator1.setHeight(height: 0.7)
        self.seperator2.setHeight(height: 0.7)
        
        self.seperator2.setCenterY()
        self.seperator1.setCenterY()
        self.labalOr.setCenter()
        
        self.seperator2.setAnchors(top: nil, bottom: nil, left: sv.leftAnchor, right: self.labalOr.leftAnchor, topConstant: 0, bottomConstant: 0, leftConstant: 0, rightConstant: -10)
        self.seperator1.setAnchors(top: nil, bottom: nil, left: self.labalOr.rightAnchor, right: sv.rightAnchor, topConstant: 0, bottomConstant: 0, leftConstant: 10, rightConstant: 0)
        
        return sv
    }()
    
    
    let labelRightInWithFBorGoogle:UILabel={
        let label = UILabel()
        label.text = "sign_in_with_fb_google".localize
        label.textColor = Colors.current.text4
        label.font = AppFonts.get(name: .regular, size: .h8)
        label.textAlignment = .center
        return label
        
    }()
    
    lazy var stackVieWSocialMediaButton:UIStackView={
        let sv = UIStackView(arrangedSubviews: [self.buttonFacebook,self.buttonGoogle])
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 10
        return sv
    }()
    
    
    
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
        
        self.view.backgroundColor = Colors.current.background1
        
        
        self.view.addSubviews(views: [imageViewTop,textFieldEmail,textFieldPassword,buttonSignIn,buttonForgotPassword,viewOr,labelRightInWithFBorGoogle,stackVieWSocialMediaButton])
        
        imageViewTop.setAnchors(top: self.view.topAnchor, bottom: nil, left: self.view.leftAnchor, right: self.view.rightAnchor)
        imageViewTop.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.2).isActive = true
        
        textFieldEmail.setAnchors(top: self.imageViewTop.bottomAnchor, bottom: nil, left: self.view.leftAnchor, right: self.view.rightAnchor, topConstant: 25, bottomConstant: 0, leftConstant: AppConstants.leftRightPadding, rightConstant: -AppConstants.leftRightPadding)
        textFieldEmail.setHeight(height: AppConstants.generalButtonHeight)
        
        textFieldPassword.setAnchors(top: self.textFieldEmail.bottomAnchor, bottom: nil, left: self.view.leftAnchor, right: self.view.rightAnchor, topConstant: 15, bottomConstant: 0, leftConstant: AppConstants.leftRightPadding, rightConstant: -AppConstants.leftRightPadding)
        textFieldPassword.setHeight(height: AppConstants.generalButtonHeight)
        
        buttonSignIn.setAnchors(top: self.textFieldPassword.bottomAnchor, bottom: nil, left: self.view.leftAnchor, right: self.view.rightAnchor, topConstant: 25, bottomConstant: 0, leftConstant: AppConstants.leftRightPadding, rightConstant: -AppConstants.leftRightPadding)
        buttonSignIn.setHeight(height: AppConstants.generalButtonHeight)
      
        
        buttonForgotPassword.setAnchors(top: self.buttonSignIn.bottomAnchor, bottom: nil, left: self.buttonSignIn.leftAnchor, right: nil, topConstant: 10, bottomConstant: 0, leftConstant: 0, rightConstant: 0)
        
        
        viewOr.setAnchors(top: self.buttonForgotPassword.bottomAnchor, bottom: nil, left: self.view.leftAnchor, right: self.view.rightAnchor, topConstant: 40, bottomConstant: 0, leftConstant: AppConstants.leftRightPadding*3, rightConstant: -AppConstants.leftRightPadding*3)
      
        
        
        labelRightInWithFBorGoogle.setAnchors(top: viewOr.bottomAnchor, bottom: nil, left: self.view.leftAnchor, right: self.view.rightAnchor, topConstant: 40, bottomConstant: 0, leftConstant: AppConstants.leftRightPadding, rightConstant: -AppConstants.leftRightPadding)
        
        stackVieWSocialMediaButton.setAnchors(top: self.labelRightInWithFBorGoogle.bottomAnchor, bottom: nil, left: self.view.leftAnchor, right: self.view.rightAnchor, topConstant: 40, bottomConstant: 0, leftConstant: AppConstants.leftRightPadding, rightConstant: -AppConstants.leftRightPadding)
        stackVieWSocialMediaButton.setHeight(height: AppConstants.generalButtonHeight)
        
        
        
    }
    
    
    
    //MARK: Action methods
    
    @objc func buttonSignInClicked(){
        self.view.endEditing(true)
        do{
            try loginViewModel.loginRequest(email: self.textFieldEmail.text ?? "", password: self.textFieldPassword.text ?? "")
        }catch let error{
            ShowToast.show(toatMessage: error.reason, feedBack: true)
        }
        
    }
    
    
    @objc func buttonForgotPasswordClicked(){
        
    }
    
    @objc func buttonFacebookClicked(){
        
    }
    
    @objc func buttonGoogleClicked(){
        
    }
    
}


