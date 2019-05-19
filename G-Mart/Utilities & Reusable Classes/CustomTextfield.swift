//
//  CustomTextfield.swift
//  G-Mart
//
//  Created by Indrajit Chavda on 19/05/19.
//  Copyright © 2019 Indrajit Chavda. All rights reserved.
//

import UIKit

class CustomTextfield: UITextField {
    var intialPadding:CGFloat = 5
    var placeHolderColor:UIColor = Colors.current.text1
    let defailtFonts = AppFonts.get(name: .regular, size: .h8)
    override var placeholder: String?{
        didSet{
            if let _placeholder = self.placeholder{
                self.attributedPlaceholder = _placeholder.addAtributes(color: self.placeHolderColor, font: self.font ?? self.defailtFonts)
            }
            
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func setUp(){
        self.borderStyle = .none
        self.font = defailtFonts
        
        self.leftViewMode = .always
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: intialPadding, height: intialPadding))
        
        self.keyboardAppearance = .dark
        self.textColor = Colors.current.text3
   
    }
    
}
