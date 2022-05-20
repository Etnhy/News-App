//
//  CollectionNewsCell.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 17.05.2022.
//

import UIKit
import AlamofireImage

class CollectionNewsCell: UICollectionViewCell {
    
    static let identifier = "CollectionNewsCell"
    
    var urlStringForBrowser = ""
    
    let imageView: UIImageView = {
       var view = UIImageView()
        view.backgroundColor = .clear
        return view
    }()
    
    let contentText: UILabel = {
       var label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.backgroundColor = .clear
        return label
    }()
    
    
     let showInApplicationButton = UIButton(title: "Show in Application", backgroundColor: .mainBackgroundColor(), titleColor: .black, tintColor: .white, font: nil, isShadow: true, cornerRadius: 4)
    
    let dateLabel: UILabel = {
        var label = UILabel()
        label.text = "q123321"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .gray
        addSubviews()
        activateConstraints()

    }
    
    override func prepareForReuse() {
        self.imageView.image     = nil
        self.contentText.text    = nil
        self.urlStringForBrowser = ""
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - AddSubviews
    private func addSubviews() {
        addSubview(imageView)
        addSubview(contentText)
        addSubview(showInApplicationButton)
        addSubview(dateLabel)
    }
    
    func configureCell(with cellModel: HomeCellModel) {
        self.contentText.text = cellModel.content
        self.urlStringForBrowser = cellModel.url
        guard let url = URL(string: cellModel.image) else {return}
        self.imageView.af.setImage(withURL: url)

    }

    // MARK: - Constraints
    fileprivate func activateConstraints() {
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
            make.height.equalTo(70)
        }

        showInApplicationButton.snp.makeConstraints { make in
            make.trailing.equalTo(self).offset(-16)
            make.centerY.equalTo(dateLabel)
            make.width.equalTo((self.frame.size.width / 2) - 30)
            make.height.equalTo(30)
        }
        dateLabel.snp.makeConstraints { make in
            make.leading.equalTo(self).offset(16)
            make.top.equalTo(contentText.snp.bottom).offset(6)
        }
    }
    

}
