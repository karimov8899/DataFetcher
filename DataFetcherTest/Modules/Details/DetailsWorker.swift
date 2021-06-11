//
//  DetailsWorker.swift
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
import  Alamofire

class DetailsWorker {
    //MARK: Fetching comments
    
    func fetchComments(id: Int, completion: @escaping ([DetailsItemModel]?) -> Void) {
        //URL for fetching comments with id
        let requestURL = "https://jsonplaceholder.typicode.com/posts/\(id)/comments"
        AF.request(requestURL, parameters: nil)
            .responseJSON {(response) in
                switch response.result {
                case .success(_):
                    guard let data = response.data else {return print("No data")}
                    do {
                        //Decoding JSON to DetailsItemModel
                        let item = try JSONDecoder().decode([DetailsItemModel].self, from: data)
                        completion(item)
                    } catch {
                        print("Decoding Error")
                    }
                case .failure(let error):
                    print(error)
                }
            }
    }
}