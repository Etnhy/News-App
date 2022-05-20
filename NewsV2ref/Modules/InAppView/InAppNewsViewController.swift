//
//  InAppNewsViewController.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 20.05.2022.
//

import UIKit

class InAppNewsViewController: MainViewController {
    
    weak var preenter: InAppViewPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
extension InAppNewsViewController: InAppViewProtocol {
    func succes(items: [InAppModel]) {
        //
    }
    
    func failure(error: Error) {
        //
    }
    
    
}
