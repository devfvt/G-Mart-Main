//
//  File.swift
//  G-Mart
//
//  Created by Indrajit Chavda on 18/05/19.
//  Copyright © 2019 Indrajit Chavda. All rights reserved.
//

import Foundation


class AppErrors{
    static let invalidEmail = NSError(domain: "invalid_email".localize, code: 100, userInfo: [:] )
    static let invalidPasswordlenght = NSError(domain: "passowrd_must_be_more_than_three_chars".localize, code: 101, userInfo: [:] )
    static let enterPassword = NSError(domain: "enter_password".localize, code: 102, userInfo: [:] )
    static let enterEmail = NSError(domain: "enter_email".localize, code: 103, userInfo: [:] )
    
    static let enterEmailAndPassword = NSError(domain: "enter_email_and_password".localize, code: 104, userInfo: [:] )
   
    
    
    
}


extension Error{
    var reason:String{
        get {
            return (self as NSError).domain
        }
        
        set{
            
        }
        
    }
    
    var errorCode:Int{
        get{
            return (self as NSError).code
        }set{
            
        }
        
    }
}
