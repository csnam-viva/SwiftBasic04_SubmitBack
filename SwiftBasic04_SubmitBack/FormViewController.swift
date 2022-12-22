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
    @IBOutlet  var isUpdateText: UILabel!
    @IBOutlet  var intervalText: UILabel!
    
    @IBAction func onSubmit2(_ sender: Any) {
        // 직접 전달 방식
//        let preVC = self.presentingViewController
//        guard let vc = preVC as? ViewController else {
//            return
//        }
//        vc.paramEmail = self.email.text
//        vc.paramUpdate = self.isUpdate.isOn
//        vc.paramInterval = self.interval.value
              
         //저장소를 이용한 저장방식
        
        let ad = UIApplication.shared.delegate as? AppDelegate
        ad?.paramEmail = self.email.text
        ad?.paramUpdate = self.isUpdate.isOn
        ad?.paramInterval = self.interval.value
        
//        // UserDefault이용하는 방식
//        let ud = UserDefaults.standard
//        ud.set(self.email.text, forKey: "email")
//        ud.set(self.isUpdate.isOn,forKey: "isUpdate")
//        ud.set(self.interval.value,forKey: "interval")
        
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func onSwich(_ sender: UISwitch) {
        isUpdateText.text = sender.isOn == true ? "Auto update" : "no Update"
    }
    
    @IBAction func onStepperChange(_ sender: UIStepper) {
        intervalText.text = "\(Int(sender.value))분마다 갱신"
    }
    
}
