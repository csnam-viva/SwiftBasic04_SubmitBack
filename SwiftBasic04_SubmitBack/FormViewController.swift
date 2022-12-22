//
//  FormViewController.swift
//  SwiftBasic04_SubmitBack
//
//  Created by 비바 on 2022/12/21.
//

import Foundation
import UIKit

class FormViewContorller: UIViewController{
    @IBOutlet  var email: UITextField!
    @IBOutlet  var isUpdate: UISwitch!
    @IBOutlet  var interval: UIStepper!
    
    
    @IBAction func onSubmit2(_ sender: Any) {
        let preVC = self.presentingViewController
        guard let vc = preVC as? ViewController else {
            return
        }
        vc.paramEmail = self.email.text
        vc.paramUpdate = self.isUpdate.isOn
        vc.paramInterval = self.interval.value
        
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
