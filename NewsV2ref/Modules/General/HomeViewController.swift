//
//  HomeViewController.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 17.05.2022.
//

import UIKit
import SnapKit
import SafariServices

class HomeViewController: MainViewController {
    
    var presenter: HomeViewPresenterProtocol?
    var cellModel      = [HomeCellModel]()

    
   fileprivate lazy var collectionNews: UICollectionView =  {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        var view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.dataSource = self
        view.delegate = self
        view.register(CollectionNewsCell.self, forCellWithReuseIdentifier: CollectionNewsCell.identifier)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Welcome !"
        configureView()
    }
    
    
    fileprivate func configureView() {
        view.addSubview(collectionNews)
        
        collectionNews.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalTo(view)
            make.bottom.equalTo(view)
        }
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellModel.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return.init(width: self.view.frame.size.width, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionNewsCell.identifier, for: indexPath) as? CollectionNewsCell else {
            return UICollectionViewCell()
        }
        cell.configureCell(with: cellModel[indexPath.item])
         let url = URL(string: cellModel[indexPath.item].url)

        cell.showInApplicationButton.addTarget(self, action: #selector(showInAppAction), for: .touchUpInside)
        cell.showInBrowserButton.addTarget(self, action: #selector(showInBrowserAction), for: .touchUpInside)

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(indexPath.item)
    }
    
}
extension HomeViewController: HomeViewProtocol {
    func succes(items: [HomeCellModel]) {
        self.cellModel = items
        self.collectionNews.reloadData()
    }
    
    func failure(error: Error) {
        print(error)
    }
}

extension HomeViewController {
    @objc func showInBrowserAction() {
        print("browser")
    }
    @objc func showInAppAction() {
        print("browser")
    }
}
