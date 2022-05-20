//
//  MainViewController.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 17.05.2022.
//

import UIKit

class MainViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .mainBackgroundColor()

        setupView()
    }
    
    fileprivate func setupView() {
        let navBarAppearence = UINavigationBarAppearance()
        navBarAppearence.configureWithOpaqueBackground()
        navBarAppearence.titleTextAttributes      = [.foregroundColor: UIColor.white]
        navBarAppearence.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearence.backgroundColor = .clear
        navigationController?.navigationBar.standardAppearance   = navBarAppearence
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearence
    }


}
