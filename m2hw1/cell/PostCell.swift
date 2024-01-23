//
//  PostCell.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 27.11.23.
//

import UIKit

class PostCell: UITableViewCell {
    
    static let reuseId = "cell"
    
    var index: Int = 0
    var delegate: ViewControllerDeleg?
    
    private lazy var contetView: UIView = {
        .config(view: $0){
            $0.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
            $0.layer.cornerRadius = 15
            $0.isExclusiveTouch = true
            
            $0.addSubview(nameText)
            $0.addSubview(imageText)
            $0.addSubview(textField)
            $0.addSubview(viewButton)
        }
    }(UIView())
    
    private lazy var nameText: UILabel = {
        .config(view: $0) {
            $0.font = UIFont.systemFont(ofSize: 16, weight: .bold)
            $0.textColor = .black
            $0.numberOfLines = 0
        }
    }(UILabel())
    
    private lazy var viewButton: UIButton = {
        let viewButton = UIButton(primaryAction: action)
        viewButton.backgroundColor = #colorLiteral(red: 0, green: 0.6117647059, blue: 0.3529411765, alpha: 1)
        viewButton.setTitle("More", for: .normal)
        viewButton.setTitleColor(.white, for: .normal)
        viewButton.layer.cornerRadius = 17
        viewButton.translatesAutoresizingMaskIntoConstraints = false
        return viewButton
    }()
    
    private lazy var action = UIAction { _ in
        self.delegate?.sendDataToSecondViewController(index: self.index)
    }
    
    private lazy var imageText: UIImageView = {
        .config(view: $0){
            $0.contentMode = .scaleAspectFill
            $0.layer.cornerRadius = 15
            $0.clipsToBounds = true
        }
    }(UIImageView())
    
    private lazy var textField: UILabel = {
        .config(view: $0){
            $0.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            $0.textColor = .black
            $0.numberOfLines = 0
        }
    }(UILabel())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
    }
    
    
    func configurateCell(cellData: TableData){
        print(cellData.name)
        
        self.addSubview(contetView)
        
        imageText.image = UIImage(named: cellData.photo)
        nameText.text = cellData.name
        textField.text = cellData.text
        
        let ratio = (imageText.image?.size.height ?? 0) / (imageText.image?.size.width ?? 0)
        let imageWidth = (self.frame.width) * ratio
        
        NSLayoutConstraint.activate([
            contetView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            contetView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            contetView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            contetView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            imageText.topAnchor.constraint(equalTo: contetView.topAnchor),
            imageText.leadingAnchor.constraint(equalTo: contetView.leadingAnchor),
            imageText.trailingAnchor.constraint(equalTo: contetView.trailingAnchor),
            imageText.heightAnchor.constraint(equalToConstant: imageWidth),
            
            nameText.topAnchor.constraint(equalTo: imageText.bottomAnchor, constant: 10),
            nameText.leadingAnchor.constraint(equalTo: contetView.leadingAnchor, constant: 10),
            nameText.trailingAnchor.constraint(equalTo: contetView.trailingAnchor, constant: -10),
            
            textField.topAnchor.constraint(equalTo: nameText.bottomAnchor, constant: 10),
            textField.leadingAnchor.constraint(equalTo: contetView.leadingAnchor, constant: 10),
            textField.trailingAnchor.constraint(equalTo: contetView.trailingAnchor, constant: -10),
            
            viewButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 10),
            viewButton.leadingAnchor.constraint(equalTo: contetView.leadingAnchor, constant: 10),
            viewButton.trailingAnchor.constraint(equalTo: contetView.trailingAnchor, constant: -10),
            viewButton.bottomAnchor.constraint(equalTo: contetView.bottomAnchor, constant: -10)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
