//
//  ThiedViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 20.11.23.
//

import UIKit

class ThiedViewController: UIViewController, NavigationView {
    
    var delegate3: NavigationView?
     
    lazy var thirdButton: UIButton = {
       let thirdButton = UIButton(primaryAction: action3)
        thirdButton.setTitle("text 3", for: .normal)
        thirdButton.setTitleColor(.white, for: .normal)
        thirdButton.backgroundColor = .lightGray
        thirdButton.frame = .init(x: 150, y: 300, width: 100, height: 100)
        return thirdButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(thirdButton)
    }
    
    lazy var action3 = UIAction { _ in
        self.delegate3?.addInt(numberOne: "text from 3")
    }
    
    func addInt(numberOne: String) {
        print("text form 3.5")
    }
}
