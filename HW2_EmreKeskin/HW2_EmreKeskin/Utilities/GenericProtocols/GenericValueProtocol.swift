//
//  GenericValueProtocol.swift
//  HW2_EmreKeskin
//
//  Created by Emre Keskin on 1.10.2021.
//

import Foundation

protocol GenericValueProtocol {
    
    associatedtype Value
    var value: Value { get }
    
}
