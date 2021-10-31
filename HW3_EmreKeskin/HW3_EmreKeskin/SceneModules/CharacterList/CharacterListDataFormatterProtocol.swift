//
//  CharacterListDataFormatterProtocol.swift
//  Week_3
//
//  Created by Emre Keskin on 13.10.2021.
//

import Foundation

protocol CharacterListDataFormatterProtocol {
    
    func getItem(from data: CharacterData) -> ItemTableViewCellData 
    
}
