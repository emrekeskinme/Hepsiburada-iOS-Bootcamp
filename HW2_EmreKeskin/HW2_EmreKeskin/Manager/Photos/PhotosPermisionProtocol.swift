//
//  PhotosPermisionProtocol.swift
//  HW2_EmreKeskin
//
//  Created by Emre Keskin on 1.10.2021.
//

import Foundation
import PhotosUI
import Combine
import SwiftUI

protocol PhotosPermisionProtocol: PermissionManagerProtocol {
    
    func checkPhotosPermission() -> Bool
    
    func subscribePhotosStatusObject(completion: @escaping BooleanBlock) -> AnyCancellable
    
    func selectPhoto(completion: @escaping (Image) -> Void)
    
}
