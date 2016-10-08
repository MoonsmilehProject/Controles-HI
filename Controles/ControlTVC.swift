//
//  ControlTVC.swift
//  Controles
//
//  Created by Humberto Solano on 08/10/16.
//  Copyright © 2016 moonsmileh. All rights reserved.
//

import UIKit

class ControlTVC: UITableViewController {
    
    var controlArray : [Control]!

    override func viewDidLoad() {
        super.viewDidLoad()
        controlArray = []
        // Acceso a archivo plist
        if let pathFile = Bundle.main.path(forResource: "MenuContent", ofType: "plist") {
            let array = NSArray(contentsOfFile: pathFile) as! [[String:String]]
            for controlDic in array {
                if let ctl = Control.controllFromDic(controlDic : controlDic) {
                    controlArray.append(ctl)
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return controlArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ControlCell", for: <#T##IndexPath#>)
        
    }

    
}
