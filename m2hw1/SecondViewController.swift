//
//  SecondViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 18.12.23.
//

import UIKit
import AVFoundation

final class SecondViewController: UIViewController {

    let cameraSession = AVCapturePhotoOutput()
    
    let cameraSettings = AVCaptureSession()
    
    
    private lazy var buttonMove: UIButton = {
        $0.configuration = .borderedProminent()
        $0.setImage(UIImage(systemName: "photo.fill"), for: .normal)
        $0.frame = CGRect(x: 280, y: 560, width: 50, height: 50)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .black
        return $0
    }(UIButton())
    
    private lazy var imageView: UIImageView = {
        $0.image = UIImage(named: "img1")
        $0.contentMode = .scaleAspectFill
        $0.frame = CGRect(x: 20, y: 30, width: 50, height: 50)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    lazy var contentView: UIStackView = {
        $0.addSubview(imageView)
        $0.addSubview(buttonMove)
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(contentView)
        view.backgroundColor = .blue
        cameraSet()
        
        NSLayoutConstraint.activate([
            buttonMove.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            buttonMove.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            buttonMove.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            buttonMove.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            
            contentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10)
        ])
    }
    
    private func cameraSet () {
//        guard let session = AVCaptureSession.canAddOutput() else {
//            return
//        }
//        guard let device = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInDualCamera], mediaType: .video, position: .back).devices.first else {
//            if  {
//                return print("true")
//            }else{
//                return print("i can't see anything")
//            }
//        }
    }
}
