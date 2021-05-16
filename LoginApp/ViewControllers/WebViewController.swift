//
//  WebViewController.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 16.05.2021.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate {
    
//    @IBOutlet var wKWebView: WKWebView!
    
    var webView: WKWebView!
        
        override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let myURL = URL(string: "https://vk.com/johnkrim")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
    }
    
    
}
