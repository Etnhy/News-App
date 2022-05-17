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
    
    let contentText: UILabel = {
       var label = UILabel()
        label.backgroundColor = .blue
        return label
    }()
    
    let showInBrowserButton = UIButton(title: "Show in browser", backgroundColor: .orange, titleColor: .white, tintColor: .white, font: nil, isShadow: true, cornerRadius: 4)
    
    let showInApplicationButton = UIButton(title: "Show in Application", backgroundColor: .orange, titleColor: .white, tintColor: .white, font: nil, isShadow: true, cornerRadius: 4)
    
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
        addSubview(contentText)
        addSubview(showInBrowserButton)
        addSubview(showInApplicationButton)
    }
    
    // MARK: - Constraints
    private func activateConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.equalTo(self).offset(10)
            make.leading.equalTo(self).offset(20)
            make.trailing.equalTo(self).offset(-20)
            make.height.equalTo(160)
        }
        contentText.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(3)
            make.leading.equalTo(self).offset(10)
            make.trailing.equalTo(self).offset(-10)
            make.height.equalTo(80)
        }
        showInBrowserButton.snp.makeConstraints { make in
            make.top.equalTo(contentText.snp.bottom).offset(6)

            make.bottom.equalTo(self).offset(-6)
            make.leading.equalTo(self).offset(10)
            make.width.equalTo((self.frame.size.width / 2) - 30)

        }
        showInApplicationButton.snp.makeConstraints { make in
            make.top.equalTo(contentText.snp.bottom).offset(6)
            make.trailing.equalTo(self).offset(-10)
            make.bottom.equalTo(self).offset(-6)
            make.width.equalTo((self.frame.size.width / 2) - 30)

            
        }
    }
    

}
