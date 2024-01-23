//
//  SecondViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 12.11.23.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    var delegate: ViewControllerDelegate?
    
    //кнопки
    
    lazy var buttonOne: UIButton = {
        var buttonOne = UIButton(frame: CGRect(x: 48, y: 239, width: 63, height: 63), primaryAction: action)
        buttonOne.backgroundColor = .systemBlue
        buttonOne.setTitle("+", for: .normal)
        return buttonOne
    }()
    
    lazy var buttonTwo: UIButton = {
        var buttonTwo = UIButton(frame: CGRect(x: 139, y: 239, width: 63, height: 63), primaryAction: action)
        buttonTwo.backgroundColor = .systemBlue
        buttonTwo.setTitle("-", for: .normal)
        return buttonTwo
    }()
    
    lazy var buttonThree: UIButton = {
        var buttonThree = UIButton(frame: CGRect(x: 230, y: 239, width: 63, height: 63), primaryAction: action)
        buttonThree.backgroundColor = .systemBlue
        buttonThree.setTitle("*", for: .normal)
        return buttonThree
    }()
    
    lazy var buttonFour: UIButton = {
        var buttonFour = UIButton(frame: CGRect(x: 321, y: 239, width: 63, height: 63), primaryAction: action)
        buttonFour.backgroundColor = .systemBlue
        buttonFour.setTitle("/", for: .normal)
        return buttonFour
    }()
    
    //лэйбл
    
    lazy var labelOne: UILabel = {
        var labelOne = UILabel()
        labelOne.frame = CGRect(x: 46, y: 98, width: 184, height: 29)
        labelOne.text = "Ввести данные"
        labelOne.textColor = .black
        labelOne.font = UIFont(name:"HelveticaNeue-Bold", size: 22.0)
        return labelOne
    }()
    
    //поле текста
    var numberOne: String = ""
    var numberTwo: String = ""
    
    lazy var textField1: UITextField = {
        let field = UITextField(frame: CGRect(x: 45, y: 150, width: 162, height: 55))
        field.placeholder = "Число 1"
        field.borderStyle = .roundedRect
        field.delegate = self
        field.backgroundColor = .init(red: 244.0, green: 244.0, blue: 244.0, alpha: 1.0)
        field.text = numberOne
        return field
    }()
    
    lazy var textField2: UITextField = {
        let field = UITextField(frame: CGRect(x: 222, y: 150, width: 162, height: 55))
        field.placeholder = "Число 2"
        field.borderStyle = .roundedRect
        field.delegate = self
        field.backgroundColor = .gray
        field.text = numberTwo
        return field
    }()
    
    //экшн
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(buttonOne)
        view.addSubview(buttonTwo)
        view.addSubview(buttonThree)
        view.addSubview(buttonFour)
        
        view.addSubview(labelOne)
        view.addSubview(textField1)
        view.addSubview(textField2)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        delegate?.setText1(text: textField.text ?? "")
        return true
    }
    
    lazy var action = UIAction { _ in
        let vc = ViewController()
        self.navigationController?.popViewController(animated: true)
        self.delegate?.addNum(num1: self.numberOne, num2: self.numberTwo)
    }
}
