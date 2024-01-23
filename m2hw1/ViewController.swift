//
//  ViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 08.11.23.
//

import UIKit

protocol ViewControllerDeleg {
    func sendDataToSecondViewController(index: Int)
}

final class ViewController: UIViewController {
    
    var vc2 = SecondViewController()
    
    private let tableData: [TableData] = TableData.getTableData()
    
    private lazy var tableView: UITableView = {
        .config(view: $0){
            $0.register(PostCell.self, forCellReuseIdentifier: "cell")
            $0.backgroundColor = .white
            $0.dataSource = self
        }
    }(UITableView(frame: view.frame.self, style: .insetGrouped))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
        navigationItem.title = "Salman"
    }
}

extension ViewController: ViewControllerDeleg {
    func sendDataToSecondViewController (index: Int){
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController : UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.reuseId, for: indexPath) as? PostCell {
            
            cell.configurateCell(cellData: tableData[indexPath.row])
            cell.index = indexPath.row
            cell.delegate = self
            
            return cell
        }
        return UITableViewCell()
    }
    
    
}
