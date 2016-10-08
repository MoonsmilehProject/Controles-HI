//
//  WebVC.swift
//  Controles
//
//  Created by Humberto Solano on 08/10/16.
//  Copyright © 2016 moonsmileh. All rights reserved.
//

import UIKit

class WebVC: UIViewController {
    @IBOutlet weak var wvWeb: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = "http://laboratoria.la/"
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            wvWeb.loadRequest(request)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
