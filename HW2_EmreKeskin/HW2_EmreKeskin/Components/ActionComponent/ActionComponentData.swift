//
//  ActionComponentData.swift
//  HW2_EmreKeskin
//
//  Created by Emre Keskin on 1.10.2021.
//

import Foundation

class ActionComponentData {
    private(set) var negativeButton: ActionButtonViewData
    private(set) var positifButton: ActionButtonViewData
    
    init(positifButton: ActionButtonViewData, negativeButton: ActionButtonViewData) {
        self.positifButton = positifButton
        self.negativeButton = negativeButton
    }
}
