//
//  RickyMortyViewModel.swift
//  HW4_EmreKeskin
//
//  Created by Emre Keskin on 23.10.2021.
//

import Foundation

protocol IRickyMortyViewModel {
    func fetchItems()
    func changeLoading()

    var ricyMortyCharacters: [Result] { get set }
    var rickyMortyService: IRickyMortyService { get }

    var rickyMortyOutput: RickyMortyOutPut? { get }

    func setDelegate(output: RickyMortyOutPut)
}


final class RickyMortyViewModel: IRickyMortyViewModel {
    var rickyMortyOutput: RickyMortyOutPut?
    
    func setDelegate(output: RickyMortyOutPut) {
        rickyMortyOutput = output
    }
    

    var ricyMortyCharacters: [Result] = []
    private var isLoading = false
    let rickyMortyService: IRickyMortyService


    init() {
        rickyMortyService = RickyMortyService()
    }

    func fetchItems() {
        changeLoading()
        rickyMortyService.fetchAllDatas { [weak self] (response) in
            self?.changeLoading()
            self?.ricyMortyCharacters = response ?? []
            self?.rickyMortyOutput?.saveDatas(values: self?.ricyMortyCharacters ?? [])
        }
    }

    func changeLoading() {
        isLoading = !isLoading
        rickyMortyOutput?.changeLoading(isLoad: isLoading)
    }
}
