//
//  CollectionNewsCell.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 17.05.2022.
//

import UIKit

class CollectionNewsCell: UICollectionViewCell {
    
    static let identifier = "CollectionNewsCell"
    
    let imageView: UIImageView = {
       var view = UIImageView()
        view.backgroundColor = .orange
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        addSubviews()
        activateConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup view
    private func setupView() {
        
    }
    // MARK: - AddSubviews
    private func addSubviews() {
        addSubview(imageView)
    }
    
    // MARK: - Constraints
    private func activateConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.equalTo(self).offset(10)
            make.leading.equalTo(self).offset(20)
            make.trailing.equalTo(self).offset(-20)
            make.height.equalTo(160)
        }
    }
    

}
