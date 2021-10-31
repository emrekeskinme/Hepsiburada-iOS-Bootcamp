//
//  CameraPermissionProtocol.swift
//  HW2_EmreKeskin
//
//  Created by Emre Keskin on 1.10.2021.
//

import Foundation

protocol CameraPermissionProtocol: PermissionManagerProtocol {
    
    func checkPermission() -> Bool

}
