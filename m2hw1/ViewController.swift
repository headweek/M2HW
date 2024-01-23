//
//  ViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 08.11.23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var session: AVCaptureSession!
    
    var preview: AVCaptureVideoPreviewLayer!
    
    var output = AVCapturePhotoOutput()
    
    lazy var shootBtn: UIButton = {
        $0.setBackgroundImage(UIImage(systemName: "camera.circle"), for: .normal)
        $0.frame = CGRect(x: 175, y: 770, width: 50, height: 50)
        return $0
    }(UIButton(primaryAction: action))
    
    lazy var action = UIAction { _ in
        let setting = AVCapturePhotoSettings()
        self.output.capturePhoto(with: setting, delegate: self)
    }
    
    lazy var imageView: UIImageView = {
        $0.frame = CGRect(x: 300, y: 770, width: 50, height: 50)
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 25
        $0.backgroundColor = .blue
        $0.clipsToBounds = true
       return $0
    }(UIImageView())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(shootBtn)
        view.addSubview(imageView)
        
        cameraSet()
    }
    
    private func cameraSet () {
        
        session = AVCaptureSession()
        session.sessionPreset = .hd4K3840x2160
        
        guard let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back) else {
            print("i can't see any camera")
            return
        }
        do {
            let input = try AVCaptureDeviceInput(device: device)
            
            if session.canAddOutput(output), session.canAddInput(input) {
                session.addInput(input)
                session.addOutput(output)
            }
            
            preview = AVCaptureVideoPreviewLayer()
            preview.videoGravity = .resizeAspect
            
            DispatchQueue.global(qos: .userInitiated).async {
                self.session.startRunning()
            }
            
            preview.frame = view.bounds
            view.layer.addSublayer(preview)
            
        } catch {
                print("Error")
        }
    }
}

extension ViewController: AVCapturePhotoCaptureDelegate {
    
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
       
        guard let data = photo.fileDataRepresentation() else {
            return
        }
        
        if let image = UIImage(data: data){
            self.imageView.image = image
            
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        }
    }
}
