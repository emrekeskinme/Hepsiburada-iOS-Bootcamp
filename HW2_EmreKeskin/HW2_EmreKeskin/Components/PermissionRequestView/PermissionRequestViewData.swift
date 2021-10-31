//
//  PermissonRequestViewData.swift
//  HW2_EmreKeskin
//
//  Created by Emre Keskin on 1.10.2021.
//

import UIKit

class PermissionRequestViewData {
    
    private(set) var image: UIImage
    private(set) var infoViewData: InfoViewData
    private(set) var actionComponentData: ActionComponentData
    
    init(image: UIImage, infoViewData: InfoViewData, actionComponentData: ActionComponentData) {
        self.image = image
        self.infoViewData = infoViewData
        self.actionComponentData = actionComponentData
    }
    
}
