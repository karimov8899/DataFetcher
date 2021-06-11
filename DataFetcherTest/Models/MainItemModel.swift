//
//  MainItemModel.swift
//  DataFetcherTest
//
//  Created by Davron on 10.06.2021.
//

import Foundation

// Main data model

struct MainItemModel: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
