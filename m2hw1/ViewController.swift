//
//  ViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 08.11.23.
//

import UIKit
import WebKit

final class ViewController: UIViewController {

    
    private let images: [UIImage] = [
        .img1, .img2,
    ]
    
    private lazy var layout: UICollectionViewFlowLayout = {
        $0.scrollDirection = .vertical
        $0.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        $0.minimumLineSpacing = 10
        $0.minimumInteritemSpacing = 10
        
        return $0
    }(UICollectionViewFlowLayout())
    
    
    private lazy var collectionView: UICollectionView = {
        $0.dataSource = self
        $0.delegate = self
        $0.frame = view.bounds
        $0.backgroundColor = .gray
        $0.register(CollectionCell.self, forCellWithReuseIdentifier: CollectionCell.reuseId)
        return $0
        
    }(UICollectionView(frame: .zero, collectionViewLayout: layout))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
    }


}

extension ViewController: UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionCell.reuseId, for: indexPath) as? CollectionCell else {
            return UICollectionViewCell()
        }
        
        cell.setCollectionCell(image: images[indexPath.item])
        return cell
        
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .zero
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = WebController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
