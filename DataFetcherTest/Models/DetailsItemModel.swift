//
//  DetailsItemModel.swift
//  DataFetcherTest
//
//  Created by Davron on 11.06.2021.
//

import Foundation

// Details data model

struct DetailsItemModel: Codable {
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
}
