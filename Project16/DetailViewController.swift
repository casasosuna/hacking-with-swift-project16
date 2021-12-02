//
//  DetailViewController.swift
//  Project16
//
//  Created by Enrique Casas on 12/1/21.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var city: String!
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if city == "Washington DC" {
            let url = URL(string: "https://en.wikipedia.org/wiki/Washington,_D.C.")!
            webView.load(URLRequest(url: url))
            webView.allowsBackForwardNavigationGestures = true
        } else {
            let url = URL(string: "https://en.wikipedia.org/wiki/" + city)!
            webView.load(URLRequest(url: url))
            webView.allowsBackForwardNavigationGestures = true
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
