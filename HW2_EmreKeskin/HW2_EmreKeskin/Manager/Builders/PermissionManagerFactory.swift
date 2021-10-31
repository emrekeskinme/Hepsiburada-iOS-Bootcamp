//
//  PermissionManagerFactory.swift
//  HW2_EmreKeskin
//
//  Created by Emre Keskin on 1.10.2021.
//

import Foundation

enum PermissionType {
    case photo
    case camera
}

class PermissionManagerFactory {

    private static let cameraManager = CameraPermissionManager()
    private static let photoManager = PhotosPermissionManager()
    
    class func getManager(with type: PermissionType) -> PermissionManagerProtocol {
        
        switch type {
        case .photo:
            return photoManager
        case .camera:
            return cameraManager
        }
        
    }
    
    class func getCameraPermissioManager() -> CameraPermissionProtocol {
        return cameraManager
    }
    
    class func getPhotoPermissionManager() -> PhotosPermisionProtocol {
        return photoManager
    }
    
}
