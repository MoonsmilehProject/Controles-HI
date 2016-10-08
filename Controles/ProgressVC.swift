//
//  Progress&StepperVC.swift
//  Controles
//
//  Created by Humberto Solano on 08/10/16.
//  Copyright © 2016 moonsmileh. All rights reserved.
//

import UIKit

class ProgressVC: UIViewController {
    @IBOutlet weak var pvProgress: UIProgressView!
    @IBOutlet weak var lblProgress: UILabel!
    @IBOutlet weak var stpStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func stepperChanged(sender:UIStepper){
        // Format para mostrar 0 decimales y agregar % char
        lblProgress.text = String(format: "El progreso es de %.0f %%", stpStepper.value*100)
        pvProgress.progress = Float(stpStepper.value)
    }

}
