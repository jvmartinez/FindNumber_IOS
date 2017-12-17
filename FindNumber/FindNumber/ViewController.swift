//
//  ViewController.swift
//  FindNumber
//
//  Created by iMac on 17/12/17.
//  Copyright © 2017 jvmartinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberRandom = 0
    var valueCorrect = 0
    var valueFail = 0
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var lblCountCorrect: UILabel!
    @IBOutlet weak var lblCounFail: UILabel!
    @IBOutlet weak var lblNotification: UILabel!
    
    @IBOutlet weak var viewContainerNotification: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.numberGenerator()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionReset(_ sender: Any) {
        self.valueCorrect = 0
        self.valueFail = 0
        self.lblCounFail.text = String(self.valueFail)
        self.lblCountCorrect.text = String(self.valueCorrect)
        self.lblNotification.text = ""
        self.viewContainerNotification.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    @IBAction func actionValidate(_ sender: Any) {
        if(String(self.numberRandom) == txtNumber.text){
            self.valueCorrect = self.valueCorrect + 1
            self.lblNotification.text = "Numero correcto."
            self.lblCountCorrect.text = String(self.valueCorrect)
            self.viewContainerNotification.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }else{
            self.valueFail = self.valueFail + 1
            self.lblNotification.text = "Numero incorrecto."
            self.lblCounFail.text = String(self.valueFail)
            self.viewContainerNotification.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        }
        self.numberGenerator()
    }
    
    func numberGenerator(){
        self.numberRandom = Int(arc4random_uniform(10))
    }
    
}

