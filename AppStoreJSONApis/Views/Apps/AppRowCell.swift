//
//  AppRowCell.swift
//  AppStoreJSONApis
//
//  Created by Maks Kokos on 08.06.2022.
//

import UIKit

class AppRowCell: UICollectionViewCell {
        
    let imageView = UIImageView(cornerRadius: 8)
    
    let nameLabel = UILabel(text: "App Name", font: .systemFont(ofSize: 20))
    let companyLabel = UILabel(text: "Company Name", font: .systemFont(ofSize: 13))
    
    let getButton = UIButton(title: "GET")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.backgroundColor = .white
        imageView.constrainWidth(constant: 64)
        imageView.constrainHeight(constant: 64)

        getButton.backgroundColor = .init(white: 0.95, alpha: 1)
        getButton.constrainWidth(constant: 80)
        getButton.constrainHeight(constant: 32)
        getButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        getButton.layer.cornerRadius = 16

        let stackView = UIStackView(arrangedSubviews: [imageView, VerticalStackView(arrangedubviews: [nameLabel, companyLabel]), getButton])
        stackView.spacing = 16
        stackView.alignment = .center
        addSubview(stackView)
        stackView.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
