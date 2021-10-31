//
//  RickyMortyService.swift
//  HW4_EmreKeskin
//
//  Created by Emre Keskin on 23.10.2021.
//

import Alamofire

enum RickyMortyServiceEndPoint: String {
    case BASE_URL = "https://rickandmortyapi.com/api"
    case PATH = "/character"

    static func characterPath() -> String {
        return "\(BASE_URL.rawValue)\(PATH.rawValue)"
    }
}

protocol IRickyMortyService {
    func fetchAllDatas(response: @escaping ([Result]?) -> Void)
}


struct RickyMortyService: IRickyMortyService {

    func fetchAllDatas(response: @escaping ([Result]?) -> Void) {
        AF.request(RickyMortyServiceEndPoint.characterPath()).responseDecodable(of: PostModel.self) { (model) in
            guard let data = model.value else {
                response(nil)
                return
            }
            response(data.results)
        }
    }

}
