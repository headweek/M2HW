//
//  SecondViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 19.11.23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var delegate2: NavigationView?
    
    lazy var secondButton: UIButton = {
       let secondButton = UIButton(primaryAction: action1)
        secondButton.frame = .init(x: 200, y: 350, width: 100, height: 100)
        secondButton.setTitle("text2", for: .normal)
        secondButton.backgroundColor = .green
        return secondButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(secondButton)
    }
    
    lazy var action1 = UIAction { _ in
        let vc2 = ThiedViewController()
        vc2.delegate3 = self.delegate2
        self.delegate2?.addInt(numberOne: "text from 2")
        self.navigationController?.pushViewController(vc2, animated: true)
    }

}
