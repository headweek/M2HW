//
//  ViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 08.11.23.
//

import UIKit

protocol NavigationView {
    func addInt (numberOne: String)
}

class ViewController: UIViewController, NavigationView {
    
    lazy var testButton: UIButton = {
       let testButton = UIButton(primaryAction: action)
        testButton.setTitle("salman", for: .normal)
        testButton.setTitleColor(.white, for: .normal)
        testButton.backgroundColor = .gray
        testButton.frame = .init(x: 150, y: 300, width: 100, height: 50)
        return testButton
    }()
    
    lazy var action = UIAction { _ in
        let vc = SecondViewController()
        vc.delegate2 = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        view.addSubview(testButton)
    }
    
    func addInt(numberOne: String) {
        print(numberOne)
    }

}
