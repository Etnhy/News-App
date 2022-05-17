//
//  HomePresenter.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 17.05.2022.
//

import Foundation

class HomePresenter: HomeViewPresenterProtocol {

    

    var items: [Article]?
    
    weak var view: HomeViewProtocol?
    weak var networkManager: NetworkManager?
    //, networkManager: NetworkManager
    required init(view: HomeViewProtocol, networkManager: NetworkManager) {
        self.view = view
        self.networkManager = networkManager
    }
 
    
    
    func set() {
        print("seeet good conditioin")
    }
    func geet() {
            networkManager?.geet()
    }

}
