//
//  ViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 08.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    private let sliderData: [SlideImages] = [
        SlideImages(color: #colorLiteral(red: 0.0179482419, green: 0.6799938083, blue: 0.5927984118, alpha: 1), title: "Error Nil", text: "Lorem ipsum dolor sit amet, consectetur adipisicing", image: .img1),
        SlideImages(color: #colorLiteral(red: 0.2455840409, green: 0.6647709012, blue: 0.8871062994, alpha: 1), title: "", text: "Duis aute irure dolor in reprehenderit in voluptate velit esse", image: .img2),
        SlideImages(color: #colorLiteral(red: 0.6307339072, green: 0.366814971, blue: 0.7342022061, alpha: 1) ,title: "", text: "sunt in culpa qui officia", image: .img3)
    ]
    
    lazy var signinBtn: UIButton = {
        $0.setTitle("sign in", for: .normal)
        $0.backgroundColor = .systemBlue
        $0.frame = CGRect(x: 20, y: view.bounds.height - 150, width: view.bounds.width - 40, height: 50)
        $0.setTitleColor(.white, for: .normal)
        
        return $0
    }(UIButton())
    
    lazy var collectionView: UICollectionView = {
        
        let collectionViewCell = UICollectionViewFlowLayout()
        collectionViewCell.minimumLineSpacing = 0
        collectionViewCell.minimumInteritemSpacing = 0
        collectionViewCell.scrollDirection = .horizontal
        collectionViewCell.itemSize = CGSize(width: view.frame.width, height: view.frame.height)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewCell)
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = .clear
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sliderData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell {
            
            cell.contentView.backgroundColor = sliderData[indexPath.item].color
            cell.titleLabel.text = sliderData[indexPath.item].title
            cell.textLabel.text = sliderData[indexPath.item].text
            cell.imageView.image = sliderData[indexPath.item].image
            
            if indexPath.item == sliderData.count - 1 {
                cell.addSubview(signinBtn)
                print("1")
            }
            return cell
        }
        return UICollectionViewCell()
        
    }
    
}

struct SlideImages {
    var color : UIColor
    var title : String
    var text: String
    var image: UIImage
}
