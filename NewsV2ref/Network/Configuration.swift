//
//  Configuration.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 17.05.2022.
//

import Foundation

struct Configuration {
    struct Net {
        //news Api
        static let api_url: String =  {
            guard let api = Bundle.main.object(forInfoDictionaryKey: "api_news") as? String else {
                fatalError()
            }
            return "\(api)"
        }()

    }
}
