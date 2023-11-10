//
//  ViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 08.11.23.
//

import UIKit

class ViewController: UIViewController {

    lazy var buttonOne: UIButton = {
            var buttonName = UIButton(type: .system, primaryAction: changeLabelOne)
            buttonName.setTitle("Имя", for: .normal)
            buttonName.backgroundColor = .blue
            buttonName.frame = .init(x: 40, y: 400, width: 150, height: 50)
            buttonName.setTitleColor(.white, for: .normal)
            return buttonName
        }()
        
        lazy var buttonTwo: UIButton = {
            var buttonName = UIButton(type: .system, primaryAction: changeLabelTwo)
            buttonName.setTitle("Фамилия", for: .normal)
            buttonName.backgroundColor = .blue
            buttonName.frame = .init(x: 200, y: 400, width: 150, height: 50)
            buttonName.setTitleColor(.white, for: .normal)
            return buttonName
        }()
        
        lazy var buttonThree: UIButton = {
            var buttonName = UIButton(type: .system, primaryAction: changeLabelThree)
            buttonName.setTitle("Группа", for: .normal)
            buttonName.backgroundColor = .blue
            buttonName.frame = .init(x: 40, y: 460, width: 310, height: 50)
            buttonName.setTitleColor(.white, for: .normal)
            return buttonName
        }()
        
        lazy var labelOne: UILabel = {
            var labelOne = UILabel()
            labelOne.frame = CGRect(x: 30, y: 60, width: 300, height: 50)
            labelOne.text = "Мое Имя:"
            labelOne.textColor = .black
            return labelOne
        }()
        
        lazy var labelTwo: UILabel = {
            var labelTwo = UILabel()
            labelTwo.frame = CGRect(x: 30, y: 100, width: 300, height: 50)
            labelTwo.text = "Моя Фамилия:"
            labelTwo.textColor = .black
            return labelTwo
        }()
        
        lazy var labelThree: UILabel = {
            var labelThree = UILabel()
            labelThree.frame = CGRect(x: 30, y: 140, width: 300, height: 50)
            labelThree.text = "Моя Группа:"
            labelThree.textColor = .black
            return labelThree
        }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.addSubview(buttonOne)
            view.addSubview(buttonTwo)
            view.addSubview(buttonThree)
            
            view.addSubview(labelOne)
            view.addSubview(labelTwo)
            view.addSubview(labelThree)
        }
        
        lazy var changeLabelOne = UIAction { _ in
            self.labelOne.text = "Мое Имя: Salman"
        }
        lazy var changeLabelTwo = UIAction { _ in
            self.labelTwo.text = "Моя Фамилия: Abdullayev"
        }
        lazy var changeLabelThree = UIAction { _ in
            self.labelThree.text = "Моя Группа: 5"
        }


}

