//
//  CollectionViewCell.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 04.12.23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var textLabel = UILabel()
    var titleLabel = UILabel()
    var imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setSlide()
    }
    private func setSlide () {
        contentView.addSubview(textLabel)
        contentView.addSubview(titleLabel)
        contentView.addSubview(imageView)
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        textLabel.textColor = .white
        textLabel.numberOfLines = 0
        textLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        
        titleLabel.textColor = .white
        titleLabel.numberOfLines = 0
        
        titleLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            textLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            textLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            textLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            imageView.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 100),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 68),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -68)
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("error")
    }
}
