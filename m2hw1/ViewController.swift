//
//  ViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 08.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    let imagesM = [
        UIImage(named: "img2"),
        UIImage(named: "img3"),
        UIImage(named: "img4"),
        UIImage(named: "img5")
    ]
    
    let imagesM2 = [
        UIImage(named: "img4"),
        UIImage(named: "img5")
    ]
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.frame = view.frame
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell2")
        tableView.dataSource = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
        
        navigationItem.title = "Salman"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem.init(systemItem: .action),
            UIBarButtonItem.init(systemItem: .compose, primaryAction: nil, menu: .none)
        ]
        
        let attr = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10)
            
        ]
        navigationController?.navigationBar.largeTitleTextAttributes = attr
        
    }
}
extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return imagesM.count
        case 1:
            return imagesM2.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        switch indexPath.section{
        case 0:
            cell.imageView?.image = imagesM[indexPath.item]
            cell.imageView?.layer.cornerRadius = 10
            cell.imageView?.clipsToBounds = true
            cell.textLabel?.text = "user"
            
            let labelText = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            labelText.text = "1"
            cell.accessoryView = labelText
            
            if let textLabel = cell.textLabel, let imageView = cell.imageView {
                imageView.leadingAnchor.constraint(equalTo: cell.leadingAnchor, constant: 5).isActive = true
                imageView.topAnchor.constraint(equalTo: cell.topAnchor, constant: 5).isActive = true
                imageView.bottomAnchor.constraint(equalTo: cell.bottomAnchor, constant: 5).isActive = true
                imageView.widthAnchor.constraint(equalToConstant: 10).isActive = true
                
                textLabel.translatesAutoresizingMaskIntoConstraints = false
                textLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 13).isActive = true
                textLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
            }
        case 1:
            cell.imageView?.image = imagesM2[indexPath.item]
            cell.imageView?.frame.size = CGSize(width: 10, height: 10)
            cell.imageView?.clipsToBounds = true
            cell.textLabel?.text = "user2"
            
            let labelText = UILabel(frame: CGRect(x: 0, y: 0, width: 70, height: 20))
            labelText.text = "написать"
            cell.accessoryView = labelText
            
            if let imageView = cell.imageView, let textLabel = cell.textLabel {
                imageView.translatesAutoresizingMaskIntoConstraints = false
                imageView.topAnchor.constraint(equalTo: cell.contentView.topAnchor, constant: 7).isActive = true
                imageView.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 12).isActive = true
                imageView.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor, constant: -7).isActive = true
                imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor).isActive = true
                imageView.layer.cornerRadius = 90
                imageView.frame.size = CGSize(width: 77, height: 77)
                
                textLabel.translatesAutoresizingMaskIntoConstraints = false
                textLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20).isActive = true
                textLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
            }
        default:
            return cell
        }
        return cell
    }
    
    
}

