//
//  SearchAPI.swift
//  TeamOmoolen-iOS
//
//  Created by kimhyungyu on 2021/07/07.
//

import Foundation
import Moya

class SearchAPI {
    static let shared = SearchAPI()
    static let provider = MoyaProvider<SearchService>()

    
    // get data
    func getSearchFilterResult(param: SearchFilterRequest, completion: @escaping ([SearchResultResponse]) -> ()) {
        SearchAPI.provider.request(.searchFilter(param: param)) { response in
            switch response {
            case .success(let result):
                do {
                    let results = try JSONDecoder().decode(SearchResultDataModel.self, from: result.data)
                    print(results.message)
                    completion(results.data)
                } catch let err {
                    print("JSONDecode: \(err.localizedDescription)")
                    debugPrint(err)
                }
            case .failure(let err):
                print(".failure: \(err.localizedDescription)")
            }
        }
    }
    func getPopularSearch(completion: @escaping ([PopularResponse]) -> ()) {
        SearchAPI.provider.request(.searchWindow) { response in
            switch response {
            case .success(let result):
                do {
                    let results = try JSONDecoder().decode(PopularDataModel.self, from: result.data)
                    print(results.message)
                    completion(results.data)
                } catch let err {
                    print("JSONDecode: \(err.localizedDescription)")
                    debugPrint(err)
                }
            case .failure(let err):
                print(".failure: \(err.localizedDescription)")
            }
        }
    }
}
