//
//  GmartTheme.swift
//  G-Mart
//
//  Created by Indrajit Chavda on 19/05/19.
//  Copyright © 2019 Indrajit Chavda. All rights reserved.
//

import UIKit



protocol AppColors {
    var theme:UIColor{get}
    var button1:UIColor{get}
    var button2:UIColor{get}
    
    
    var text1:UIColor{get}
    var text2:UIColor{get}
    
    var seperator1:UIColor{get}
    
    
    var background1:UIColor{get}
}

class Colors{
    static let current = CurrentTheme()
}

class CurrentTheme:AppColors{
    var theme: UIColor{
        return #colorLiteral(red: 0.9279924631, green: 0.1100233421, blue: 0.1424910724, alpha: 1)
    }
    var button1: UIColor{
        return #colorLiteral(red: 0.69059515, green: 0.8215330243, blue: 0.2085875571, alpha: 1)
    }
    var button2: UIColor{
        return #colorLiteral(red: 0.2291906178, green: 0.3492426276, blue: 0.5951362848, alpha: 1)
    }
    
    
    var text1: UIColor{
        return #colorLiteral(red: 0.5224176645, green: 0.5228312612, blue: 0.5224817395, alpha: 1)
    }
    
    var text2: UIColor{
        return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    var seperator1: UIColor{
        return #colorLiteral(red: 0.7167531252, green: 0.7136695981, blue: 0.7168356776, alpha: 1)
    }
    var background1: UIColor{
        return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}



class AppFonts{
  
    func get(name:FontsName,size:FontsSize)->UIFont{
        return UIFont.init(name: name.rawValue, size: size.rawValue)!
    }
    
    func adjust(size:CGFloat)->CGFloat{
        return size
    }
    
}


enum FontsName:String {
    case regular = "HelveticaNeue"
    case bold = "HelveticaNeue-Bold"
    case light = "HelveticaNeue-Light"
}

enum FontsSize:CGFloat {
    case h1 = 30
    case h2 = 28
    case h3 = 26
    case h4 = 24
    case h5 = 22
    case h6 = 20
    case h7 = 18
    case h8 = 16
    case h9 = 15
    case h10 = 14
    case h11 = 13
    case h12 = 12
}


/*
 
 case light = "HelveticaNeue-Light"
 HelveticaNeue
 HelveticaNeue-BoldItalic
 HelveticaNeue-CondensedBlack
 HelveticaNeue-CondensedBold
 HelveticaNeue-Italic
 HelveticaNeue-Light
 HelveticaNeue-LightItalic
 HelveticaNeue-Medium
 HelveticaNeue-MediumItalic
 HelveticaNeue-Thin
 HelveticaNeue-ThinItalic
 HelveticaNeue-UltraLight
 HelveticaNeue-UltraLightItalic
 */
