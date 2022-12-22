//
//  ViewController.swift
//  SwiftBasic04_SubmitBack
//
//  Created by 비바 on 2022/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet  var resultEmail: UILabel!
    @IBOutlet  var resultUpdate: UILabel!
    @IBOutlet  var resultInterval: UILabel!
    
    var paramEmail: String?
    var paramUpdate: Bool?
    var paramInterval: Double? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let email = paramEmail{
            resultEmail.text = email
        }
        if let update = paramUpdate{
            resultUpdate.text = update == true ? "auto update" :"No update"
        }
        if let interval = paramInterval{
            resultInterval.text = "\(Int(interval))분마다 갱신 "
        }
    }
  

}

