//
//  ProgressVC.swift
//  Controles
//
//  Created by Humberto Solano on 08/10/16.
//  Copyright © 2016 moonsmileh. All rights reserved.
//

import UIKit

class CurrenciesVC: UIViewController {

    @IBOutlet weak var scSegmented: UISegmentedControl!
    @IBOutlet weak var swSwitch: UISwitch!
    @IBOutlet weak var sldSlider: UISlider!
    @IBOutlet weak var lblSegmented: UILabel!
    @IBOutlet weak var lblSwitch: UILabel!
    @IBOutlet weak var lblSlider: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblSegmented.text = "Mi moneda es USD"
        lblSlider.text = "El valor del slider es: \(sldSlider.value)"
        lblSwitch.text = "El Switch está apagado"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func segmentedChanged(sender:UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            lblSegmented.text = "Mi moneda es USD"
        case 1:
            lblSegmented.text = "Mi moneda es MXN"
        case 2:
            lblSegmented.text = "Mi moneda es EUR"
        default:
            break
        }
    }
    
    @IBAction func sliderChanged(sender:UISlider) {
        lblSlider.text = "El valor del slider es: \(sender.value)"
    }
    @IBAction func switchChaged(sender:UISwitch) {
        lblSwitch.text = sender.isOn ? "El Switch está encendido" : "El Switch está apagado"
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
