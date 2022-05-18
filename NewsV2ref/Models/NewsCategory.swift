//
//  NewsCategory.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 17.05.2022.
//

import Foundation

enum MainCategoriesEnum {
    case all
    case technology
    case animals
    case topHeadline
    case music
    case business
}


struct MainCategoriesUrl {
    static let all          = "everything?q=interesting"
    static let technology   = "everything?q=technology"
    static let animals      = "everything?q=animals"
    static let topHeadline  = "top-headlines?country=ua&"
    static let music        = "everything?q=music"
    static let business     = "everything?q=business"
}
