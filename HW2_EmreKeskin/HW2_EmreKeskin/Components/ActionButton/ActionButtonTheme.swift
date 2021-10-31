//
//  ActionButtonTheme.swift
//  HW2_EmreKeskin
//
//  Created by Emre Keskin on 1.10.2021.
//

import UIKit

enum ActionButtonTheme: GenericValueProtocol {
    
    typealias Value = UIColor
    
    var value: UIColor {
        switch self {
        case .smooth:
            return #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        case .bright:
            return #colorLiteral(red: 0.9686274529, green: 0.7794762106, blue: 0.3166074161, alpha: 1)
        case .dark:
            return #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        case .negativeAct:
            return #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }
    
    case smooth
    case dark
    case bright
    case negativeAct
}
