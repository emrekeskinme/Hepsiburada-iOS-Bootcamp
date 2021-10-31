//
//  PermissionViewBuilder.swift
//  HW2_EmreKeskin
//
//  Created by Emre Keskin on 1.10.2021.
//

import Foundation
import UIKit

class PermissionViewBuilder {
    
    class func build(with type: PermissionType) -> UIViewController {
        let viewModel = PermissionViewModel(manager: PermissionManagerFactory.getManager(with: type))
        let viewController = PermissionViewController(viewModel: viewModel)
        return viewController
    }

}
