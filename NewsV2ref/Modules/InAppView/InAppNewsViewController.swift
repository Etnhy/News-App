//
//  InAppNewsViewController.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 20.05.2022.
//

import UIKit

class InAppNewsViewController: MainViewController {
    
    weak var preenter: InAppViewPresenterProtocol?
    var model: InAppModel?
    
    lazy var mainScrollView: UIScrollView = {
        var view = UIScrollView()
        view.backgroundColor = .brown
        return view
    }()
    
    let mainImageView: UIImageView = {
        var image = UIImageView()
        image.backgroundColor = .black
        return image
    }()
    
    let mainTitleText: UILabel = {
       var label = UILabel()
        label.text = "Title main text"
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.backgroundColor = .blue
        label.textAlignment = .center
        return label
    }()
    
    let contentLabel: UILabel = {
       var content = UILabel()
        content.text = "Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, Content, "
        content.numberOfLines = 0
        content.font = .systemFont(ofSize: 18, weight: .regular)
        content.textAlignment = .justified
        return content
    }()
    
    let dateLabel: UILabel = {
       var date = UILabel()
        date.text = " 12.12.12.12"
        return date
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    // MARK: - Setup view
    private func setupView() {
        
        
        addSubviews()
    }
    // MARK: - AddSubviews
    private func addSubviews() {
        view.addSubview(mainScrollView)
        mainScrollView.addSubview(mainImageView)
        mainScrollView.addSubview(mainTitleText)
        mainScrollView.addSubview(contentLabel)
        mainScrollView.addSubview(dateLabel)
        activateConstraints()
    }
    
    // MARK: - Constraints
    private func activateConstraints() {
        mainScrollView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalTo(view)
            make.bottom.equalTo(view)
        }
        
        mainImageView.snp.makeConstraints { make in
            make.top.equalTo(mainScrollView).offset(10)
            make.leading.equalTo(view.snp.leading).offset(16)
            make.trailing.equalTo(view.snp.trailing).offset(-16)
            make.height.equalTo(240)
        }
        mainTitleText.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.bottom).offset(12)
            make.leading.equalTo(view.snp.leading).offset(32)
            make.trailing.equalTo(view.snp.trailing).offset(-32)
            make.height.equalTo(80)
        }
        contentLabel.snp.makeConstraints { make in
            make.top.equalTo(mainTitleText.snp.bottom).offset(12)
            make.leading.equalTo(view.snp.leading).offset(16)
            make.trailing.equalTo(view.snp.trailing).offset(-16)
        }
        dateLabel.snp.makeConstraints { make in
            make.top.equalTo(contentLabel.snp.bottom).offset(30)
            make.leading.equalTo(view).offset(16)
        }
    }
    


}
extension InAppNewsViewController: InAppViewProtocol {
    func succes(items: [InAppModel]) {
        //
    }
    
    func failure(error: Error) {
        //
    }
    
    
}
