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
    var controlSelected : Control!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Controles"
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
       let cell = tableView.dequeueReusableCell(withIdentifier: "ControlCell", for: indexPath) as! ControlTVCell
        
        let control = controlArray[indexPath.row]
        cell.lblTitle.text = control.title
        cell.lblSubtitle.text = control.subtitle
        cell.ivIcon.image = UIImage(named: control.icon)
        
        return cell
        
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Despitar selección de celda
        tableView.deselectRow(at: indexPath, animated: true)
        // Seleccion de control
        controlSelected = controlArray[indexPath.row]
        // Transiction a pantalla
        self.performSegue(withIdentifier: controlSelected.segue, sender: self)

    }
}
    /*
 //MARK: Navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 //Reviso que el destinatario sea del tipo CountryDetailVC
 if segue.destination is CountryDetailVC{
 //hago conversion de UIViewController a CountryDetailVC
 let detail =  segue.destination as! CountryDetailVC
 //Le pasamos el país
 detail.selectedCountry = selectedCountry
 }
 }
 */
