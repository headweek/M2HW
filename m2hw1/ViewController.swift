//
//  ViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 08.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setView()
    }
    
    private func setView () {
        
        lazy var windowFirst: UIView = {
           let windowFirst = UIView()
            windowFirst.backgroundColor = .gray
            windowFirst.translatesAutoresizingMaskIntoConstraints = false
            windowFirst.layer.cornerRadius = 14
            return windowFirst
        }()
        
        lazy var profilePicture: UIImageView = {
            let profilePicture = UIImageView()
            profilePicture.image = UIImage(named: "avatar")
            profilePicture.translatesAutoresizingMaskIntoConstraints = false
            profilePicture.layer.cornerRadius = 40
            return profilePicture
        }()
        
        lazy var pictureFirst: UIImageView = {
           let pictureFirst = UIImageView()
            pictureFirst.image = UIImage(named: "img1")
            pictureFirst.translatesAutoresizingMaskIntoConstraints = false
            pictureFirst.layer.cornerRadius = 20
            pictureFirst.clipsToBounds = true
            pictureFirst.contentMode = .scaleAspectFill
            return pictureFirst
        }()
        
        lazy var pictureSecond: UIImageView = {
           let pictureSecond = UIImageView()
            pictureSecond.image = UIImage(named: "img2")
            pictureSecond.translatesAutoresizingMaskIntoConstraints = false
            pictureSecond.layer.cornerRadius = 20
            pictureSecond.clipsToBounds = true
            pictureSecond.contentMode = .scaleAspectFill
            return pictureSecond
        }()
        
        lazy var editButton: UIButton = {
           let editButton = UIButton()
            editButton.backgroundColor = .systemBlue
            editButton.setTitle("Edit", for: .normal)
            editButton.setTitleColor(.white, for: .normal)
            editButton.layer.cornerRadius = 20
            editButton.translatesAutoresizingMaskIntoConstraints = false
            return editButton
        }()
        
        lazy var textLabelOne: UILabel = {
           let textOne = UILabel()
            textOne.text = "Name Surname"
            textOne.textColor = .black
            textOne.translatesAutoresizingMaskIntoConstraints = false
            textOne.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            return textOne
        }()
        
        lazy var textLabelTwo: UILabel = {
           let textTwo = UILabel()
            textTwo.text = "About Me"
            textTwo.textColor = .black
            textTwo.translatesAutoresizingMaskIntoConstraints = false
            textTwo.font = UIFont.systemFont(ofSize: 12, weight: .bold)
            return textTwo
        }()
        
        lazy var textLabelThree: UILabel = {
           let textThree = UILabel()
            textThree.text = "Photo"
            textThree.textColor = .black
            textThree.translatesAutoresizingMaskIntoConstraints = false
            textThree.font = UIFont.systemFont(ofSize: 12, weight: .bold)
            return textThree
        }()
        
        lazy var textLabelFour: UILabel = {
           let textFour = UILabel()
            textFour.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"
            textFour.textColor = .black
            textFour.numberOfLines = 0
            textFour.translatesAutoresizingMaskIntoConstraints = false
            textFour.font = UIFont.systemFont(ofSize: 12, weight: .bold)
            return textFour
        }()
        
        view.addSubview(windowFirst)
        view.addSubview(profilePicture)
        view.addSubview(pictureFirst)
        view.addSubview(pictureSecond)
        view.addSubview(editButton)
        view.addSubview(textLabelOne)
        view.addSubview(textLabelTwo)
        view.addSubview(textLabelThree)
        windowFirst.addSubview(textLabelFour)
        
        NSLayoutConstraint.activate([
            windowFirst.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            windowFirst.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            windowFirst.topAnchor.constraint(equalTo: view.topAnchor, constant: 263),
            windowFirst.heightAnchor.constraint(equalToConstant: 100),
            
            profilePicture.topAnchor.constraint(equalTo: view.topAnchor, constant: 79),
            profilePicture.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 175),
            profilePicture.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -175),
            profilePicture.heightAnchor.constraint(equalToConstant: 80),
            
            pictureFirst.topAnchor.constraint(equalTo: windowFirst.bottomAnchor, constant: 81),
            pictureFirst.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            pictureFirst.widthAnchor.constraint(equalToConstant: (view.frame.width/2) - 30),
            pictureFirst.heightAnchor.constraint(equalToConstant: 190),
            
            pictureSecond.topAnchor.constraint(equalTo: windowFirst.bottomAnchor, constant: 81),
            pictureSecond.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            pictureSecond.widthAnchor.constraint(equalToConstant: (view.frame.width/2) - 30),
            pictureSecond.heightAnchor.constraint(equalToConstant: 190),
            
            editButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            editButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            editButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 817),
            editButton.heightAnchor.constraint(equalToConstant: 59),
            
            textLabelOne.topAnchor.constraint(equalTo: profilePicture.bottomAnchor, constant: 19),
            textLabelOne.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            textLabelTwo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 33),
            textLabelTwo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 300),
            textLabelTwo.topAnchor.constraint(equalTo: view.topAnchor, constant: 241),
            
            textLabelThree.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41),
            textLabelThree.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 300),
            textLabelThree.topAnchor.constraint(equalTo: view.topAnchor, constant: 415),
            
            textLabelFour.leadingAnchor.constraint(equalTo: windowFirst.leadingAnchor, constant: 20),
            textLabelFour.trailingAnchor.constraint(equalTo: windowFirst.trailingAnchor, constant: -20),
            textLabelFour.topAnchor.constraint(equalTo: windowFirst.topAnchor, constant: 15),
            textLabelFour.bottomAnchor.constraint(equalTo: windowFirst.bottomAnchor, constant: -20)
        ])
        
    }
}

