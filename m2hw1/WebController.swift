//
//  WebController.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 07.12.23.
//

import UIKit
import WebKit

class WebController: UIViewController {

    
    private lazy var webView: WKWebView = {
        $0.frame = view.bounds
        $0.navigationDelegate = self
        return $0
    }(WKWebView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        
        if let url = URL(string: "https://facebook.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}

extension WebController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("page is load")
    }
}
