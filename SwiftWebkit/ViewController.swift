//
//  ViewController.swift
//  SwiftWebkit
//
//  Created by Luke Evers on 4/12/15.
//  Copyright (c) 2015 Luke Evers. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet var containerView : UIView! = nil
    var webView: WKWebView?
    
    override func loadView() {
        super.loadView()
        
        self.webView = WKWebView()
        self.view = self.webView!
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        var url = NSURL(string:"http://lukevers.com/")
        var req = NSURLRequest(URL:url!)
        self.webView!.loadRequest(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}