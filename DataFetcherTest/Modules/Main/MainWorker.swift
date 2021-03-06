//
//  MainWorker.swift
//  DataFetcherTest
//
//  Created by Davron on 10.06.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import Alamofire

class MainWorker {
    //URL for request
    private let requestURL = "https://jsonplaceholder.typicode.com/posts"
    
    //Function for fetching main data
    func fetchData(onPage page: Int, completion: @escaping ([MainItemModel]?) -> Void) {
        AF.request(requestURL, parameters: ["_page": page])
            .responseJSON {(response) in
                switch response.result {
                case .success(_):
                    guard let data = response.data else {return print("No data")}
                    do {
                        //Decoding JSON data to our model
                        let item = try JSONDecoder().decode([MainItemModel].self, from: data)
                        completion(item)
                    } catch {
                        //In case of error
                        print("Decoding Error")
                    }
                case .failure(let error):
                    print(error)
                }
            }
    }
}
