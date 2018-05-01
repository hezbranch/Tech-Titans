//
//  ScriptViewController.swift
//  Chat
//
//  Created by Hezekiah Branch on 4/30/18.
//  Copyright © 2018 Hezekiah Branch. All rights reserved.
//

import UIKit
import WebKit

class ScriptViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func loadView()
    {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://docs.google.com/document/d/1xMwYJL6r6js2BKQz5u_GIkz3w8VHTId7L-hZVGhMQvw/edit?usp=sharing")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the Navigation Bar
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
