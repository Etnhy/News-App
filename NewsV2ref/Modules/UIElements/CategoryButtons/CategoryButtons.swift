//
//  CategoryButtons.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 29.05.2022.
//

import UIKit

class CategoryButtons: UIScrollView {
    
    let buttonsNamed = ["Все","Технологии",
                        "Животные","ТОП",
                        "Музыка", "Бизнес"]
    
    lazy var categoryButtons: [UIButton] = {
       var buttons = [UIButton]()
        buttonsNamed.forEach { name in
            var button = UIButton(type: .system)
            var config = UIButton.Configuration.plain()
            config.title = name
            config.background.backgroundColor = .purple
            config.baseForegroundColor = .black
            config.cornerStyle = .capsule
            button.configuration = config
            button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
            buttons.append(button)
        }
        buttons[0].isSelected = true
        return buttons
    }()
    
    lazy var categoryStackView: UIStackView = {
       var view = UIStackView(arrangedSubviews: categoryButtons)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 6
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        configureView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.contentSize = CGSize(width: self.categoryStackView.frame.size.width , height: 50)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        self.showsHorizontalScrollIndicator = false
    }
    
    @objc fileprivate func didTapButton(_ sender: UIButton) {
        for (index,button) in self.categoryButtons.enumerated() {
            if button == sender {
                print(index)
            }
        }
    }
    
    fileprivate func configureView() {
        addSubview(categoryStackView)
        categoryStackView.snp.makeConstraints { make in
            make.leading.equalTo(self).offset(10)
            make.trailing.equalTo(self).offset(-10)
            make.centerY.equalTo(self)
        }
    }
    
}


