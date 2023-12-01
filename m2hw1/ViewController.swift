//
//  ViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 08.11.23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    // functions
    
    lazy var imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "img1")
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    let imageView2: UIImageView = {
       let imageView2 = UIImageView()
        imageView2.contentMode = .scaleToFill
        imageView2.image = UIImage(named: "img2")
        imageView2.clipsToBounds = true
        imageView2.layer.cornerRadius = 20
        return imageView2
    }()
    // images
    
    lazy var scroll: UIScrollView = {
       let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.alwaysBounceVertical = true
        scroll.addSubview(scrollContent)
        return scroll
    }()
    
    lazy var scrollContent: UIView = {
        let scrollContent = UIView()
        scrollContent.translatesAutoresizingMaskIntoConstraints = false
        scrollContent.addSubview(textField)
        scrollContent.addSubview(imageViewOne)
        scrollContent.addSubview(imageViewTwo)
        
        return scrollContent
    }()
    
    lazy var textField: UILabel = {
        let textField = UILabel()
        textField.text = "Salman"
        textField.textColor = .black
        textField.textAlignment = .left
        textField.font.withSize(30)
        textField.font = .systemFont(ofSize: 30, weight: .bold)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var imageViewOne: UIImageView = {
        let imageViewOne = UIImageView()
        imageViewOne.image = UIImage(named: "img1")
        imageViewOne.contentMode = .scaleAspectFill
        imageViewOne.layer.cornerRadius = 15
        imageViewOne.frame = CGRect(x: 18, y: 100, width: 394, height: 317)
        imageViewOne.clipsToBounds = true
        imageViewOne.translatesAutoresizingMaskIntoConstraints = true
        return imageViewOne
    }()
    
    lazy var imageViewTwo: UIImageView = {
        let imageViewTwo = UIImageView()
        imageViewTwo.image = UIImage(named: "img2")
        imageViewTwo.contentMode = .scaleAspectFill
        imageViewTwo.layer.cornerRadius = 15
        imageViewTwo.frame = CGRect(x: 18, y: 450, width: 394, height: 317)
        imageViewTwo.clipsToBounds = true
        imageViewTwo.translatesAutoresizingMaskIntoConstraints = true
        return imageViewTwo
    }()
    
    // scroll content
    private lazy var collection = {
        let layoutCollection = UICollectionViewFlowLayout()
        layoutCollection.minimumLineSpacing = 13
        layoutCollection.minimumInteritemSpacing = 120
        layoutCollection.itemSize = CGSize(width: 260, height: 129)
        layoutCollection.scrollDirection = .horizontal
        
        let collection =  UICollectionView(frame: .zero, collectionViewLayout: layoutCollection)
        collection.backgroundColor = .white
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collection.dataSource = self
        collection.showsHorizontalScrollIndicator = false
        collection.contentInset = UIEdgeInsets(top: 0, left: 21, bottom: 0, right: 21)
        collection.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 270)
        return collection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(collection)
        view.addSubview(scroll)
        
        NSLayoutConstraint.activate([
            scroll.topAnchor.constraint(equalTo: collection.bottomAnchor),
            scroll.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scroll.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scroll.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            scrollContent.topAnchor.constraint(equalTo: scroll.topAnchor),
            scrollContent.leadingAnchor.constraint(equalTo: scroll.leadingAnchor),
            scrollContent.trailingAnchor.constraint(equalTo: scroll.trailingAnchor),
            scrollContent.bottomAnchor.constraint(equalTo: scroll.bottomAnchor),
            
            scrollContent.widthAnchor.constraint(equalTo: scroll.widthAnchor),
            
            textField.topAnchor.constraint(equalTo: scrollContent.topAnchor, constant: 20),
            textField.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor, constant: -20),
//            textField.bottomAnchor.constraint(equalTo: scrollContent.bottomAnchor, constant: -20),
            
            imageViewOne.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 10),
            imageViewOne.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor, constant: 20),
            imageViewOne.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor, constant: -20),
            imageViewOne.bottomAnchor.constraint(equalTo: scrollContent.bottomAnchor, constant: -20),
            
        ])
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .lightGray
        cell.layer.cornerRadius = 20
        
        if indexPath.item == 1 {
            cell.backgroundView = imageView
        } else {
            cell.backgroundView = imageView2
        }
        
        return cell
    }
}
