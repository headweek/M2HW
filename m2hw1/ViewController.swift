//
//  ViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 08.11.23.
//

import UIKit

protocol ViewControllerDelegate {
    func setText1(text: String)
    func addNum(num1: String, num2: String)
}

class ViewController: UIViewController, ViewControllerDelegate {
    
    func setText1(text: String) {
        labelThree.text = text
    }
    
    var vc2 = SecondViewController()
    
    
    
    lazy var buttonRaschitat:UIButton = {
        var buttonRaschitat = UIButton(frame: CGRect(x: 22, y: 439, width: 368, height: 54), primaryAction: action)
        buttonRaschitat.setTitle("Калькулируй", for: .normal)
        buttonRaschitat.backgroundColor = .systemBlue
        buttonRaschitat.setTitleColor(.white, for: .normal)
        
        return buttonRaschitat
    }()
    
    lazy var labelOne: UILabel = {
        var labelOne = UILabel()
        labelOne.frame = CGRect(x: 46, y: 98, width: 158, height: 29)
        labelOne.text = "Калькулятор"
        labelOne.textColor = .black
        labelOne.font = UIFont(name:"HelveticaNeue-Bold", size: 22.0)
        return labelOne
    }()
    
    lazy var labelTwo: UILabel = {
        var labelTwo = UILabel()
        labelTwo.frame = CGRect(x: 160, y: 214, width: 120, height: 19)
        labelTwo.text = "Результат:"
        labelTwo.textColor = .black
        labelTwo.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
        return labelTwo
    }()
    
    lazy var labelThree: UILabel = {
        var labelThree = UILabel()
        labelThree.frame = CGRect(x: 70, y: 243, width: 282, height: 56)
        labelThree.textColor = .black
        labelThree.font = UIFont(name:"HelveticaNeue-Bold", size: 15.0)
        return labelThree
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //buttons
        
        view.addSubview(buttonRaschitat)
        view.backgroundColor = .white
        //text
        view.addSubview(labelOne)
        view.addSubview(labelTwo)
        view.addSubview(labelThree)
    }
    
    lazy var action = UIAction { _ in
        let vc = SecondViewController()
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
        vc.textField1.text = self.labelThree.text
        vc.textField2.text = self.labelThree.text
    }
    

    
}

extension ViewController: UITextFieldDelegate {
    func addNum(num1: String, num2: String) {
        vc2.numberOne = num1
        vc2.numberTwo = num2
            if let a = Int(num1), let b = Int(num2) {
                let c = a + b
                labelThree.text = "\(a) \(SecondViewController().buttonOne.title(for: .normal)!) \(b) = \(c)"
            }
        }
}

