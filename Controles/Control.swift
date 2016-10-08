//
//  Control.swift
//  Controles
//
//  Created by Humberto Solano on 08/10/16.
//  Copyright © 2016 moonsmileh. All rights reserved.
//

import UIKit

class Control: NSObject {
    let title : String
    let subtitle : String
    let icon : String
    let segue : String
    
    init(title:String, subtitle:String, icon:String, segue:String) {
        self.title = title
        self.subtitle = subtitle
        self.icon = icon
        self.segue = segue
    }
    
    class func controllFromDic(controlDic:[String:String])-> Control? {
        if let title = controlDic["title"],
        let subtitle = controlDic["subtitle"],
        let iconName = controlDic["icon"],
        let segue = controlDic["segue"] {
            return Control(title: title, subtitle: subtitle, icon: iconName, segue: segue)
        }
        return nil
    }

}
