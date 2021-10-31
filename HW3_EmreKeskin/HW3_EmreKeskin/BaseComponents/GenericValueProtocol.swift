//
//  GenericValueProtocol.swift
//  PermissionProject
//
//  Created by Emre Keskin on 13.10.2021.
//

import Foundation

protocol GenericValueProtocol {
    associatedtype Value
    var value: Value { get }
}
