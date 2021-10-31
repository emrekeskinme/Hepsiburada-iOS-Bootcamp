//
//  MainViewModel.swift
//  HW2_EmreKeskin
//
//  Created by Emre Keskin on 1.10.2021.
//

import Foundation

class MainViewModel {
    
    private let cameraPermissionManager = PermissionManagerFactory.getCameraPermissioManager()
    private let photoPermissionManager = PermissionManagerFactory.getPhotoPermissionManager()
    
    func openCamera(with completion: BooleanBlock) {
        completion(cameraPermissionManager.checkPermission())
    }
    
    func openPhotos(with completion: BooleanBlock) {
        completion(photoPermissionManager.checkPhotosPermission())
    }
    
    func getCameraActionButtonData() -> ActionButtonViewData {
        return ActionButtonViewData(title: "Camera", type: .filled(.smooth))
    }
    
    func getPhotosOpenActionButton() -> ActionButtonViewData {
        return ActionButtonViewData(title: "Photo", type: .filled(.bright))
    }
    
}
