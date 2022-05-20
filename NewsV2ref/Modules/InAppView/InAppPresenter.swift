//
//  InAppPresenter.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 20.05.2022.
//

import Foundation

class InAppPresenter: InAppViewPresenterProtocol {
    var items: [InAppModel]?

    weak var view: InAppViewProtocol?
    var networkManager: NetworkManager?
    
    required init(view: InAppViewProtocol, networkManager: NetworkManager) {
        self.view = view
        self.networkManager = networkManager
        set()
    }
    
    func set() {
        print("work in app presenter")
    }
    
    
    
}
