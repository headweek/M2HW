//
//  CollectionCell.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 06.12.23.
//

import UIKit
import WebKit

class CollectionCell: UICollectionViewCell {
    
    static let reuseId = "cell"
    
    lazy var cellView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .lightGray
        $0.layer.cornerRadius = 20
        $0.addSubview(imageView)
        $0.addSubview(label)
        $0.addSubview(titel)
        $0.addSubview(btn)
        return $0
    }(UIView())
    
    lazy var imageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    lazy var titel: UILabel = {
        $0.text = "Post"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var btn: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .systemBlue
        $0.setTitleColor(.white, for: .normal)
        $0.setTitle("more", for: .normal)
       return $0
    }(UIButton())
    
    lazy var label: UILabel = {
        $0.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"
        $0.font = UIFont.systemFont(ofSize: 16, weight: .thin)
        $0.backgroundColor = .lightGray
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    func setCollectionCell(image: UIImage){
        
        self.addSubview(cellView)
        imageView.image = image
        
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            cellView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            cellView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            cellView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20),
            
            titel.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 21),
            titel.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 33),
            titel.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -33),
            
            
            imageView.topAnchor.constraint(equalTo: titel.bottomAnchor, constant: 15),
            imageView.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 9),
            imageView.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -9),
            imageView.heightAnchor.constraint(equalToConstant: 230),
            
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 33),
            label.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -33),
            
            btn.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 25),
            btn.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 33),
            btn.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -33),
            btn.bottomAnchor.constraint(equalTo: cellView.bottomAnchor, constant: -25)
        ])
        
    }
}

