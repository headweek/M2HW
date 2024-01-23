//
//  ViewController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 08.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    var positing: CGRect?
    
    lazy var imageView: UIImageView = {
        let pan = UIPanGestureRecognizer(target: self, action: #selector(panRecog(sender: )))
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTap))
        $0.addGestureRecognizer(tap2)
        $0.addGestureRecognizer(pan)
        $0.isUserInteractionEnabled = true
        tap2.numberOfTapsRequired = 2
        $0.frame = CGRect(x: 50, y: 250, width: 300, height: 300)
        $0.image = UIImage(named: "img1")
        $0.tag = 1
        return $0
    }(UIImageView())
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(imageView)
    }
    
    @objc func panRecog (sender: UIPanGestureRecognizer) {
        guard let guesture = sender.view else {return}
        let translate = sender.translation(in: view)
        print(sender.translation(in: view))
        guesture.center = CGPoint(x: guesture.center.x + translate.x,
                                  y: guesture.center.y + translate.y)
        switch sender.state {
        case .began:
            print ("start")
        case .ended:
            if !guesture.frame.intersects(imageView.frame){
                UIView.animate(withDuration: 0.3){
                    guesture.frame = self.positing!
                }
            }
        default:
            break
        }
        sender.setTranslation(.zero, in: view)
    }
    
    @objc func handleDoubleTap(_ gesture: UITapGestureRecognizer) {
            // Проверяем текущий размер изображения и устанавливаем новый размер
            let newScale: CGFloat = (imageView.frame.size.width == imageView.bounds.width) ? 2.0 : 1.0

            // Анимированно изменяем размер изображения
            UIView.animate(withDuration: 0.3) {
                self.imageView.transform = CGAffineTransform(scaleX: newScale, y: newScale)
            }
        }
}


