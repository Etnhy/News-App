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
        // Do any additional setup after loading the view.
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
