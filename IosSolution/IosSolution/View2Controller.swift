//
//  View2Controller.swift
//  IosSolution
//
//  Created by Antony David Chinchay Valdivia on 4/27/21.
//  Copyright © 2021 Antony Chinchay. All rights reserved.
//

import UIKit

class View2Controller: UIViewController {

    @IBOutlet weak var otpComponent: OtpComponent!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        otpComponent.delegate = self
        otpComponent.initComponent()
        
    }


}

extension View2Controller :  OtpComponentDelegate {
    
    func onSuccessfulValidation(response: OtpResponse?) {
        print("Ok")
    }
    
    func onFailedfulValidation(error: OtpError?) {
        print("Error")
    }
    
    func getOtpType() -> OtpType {
        
        return OtpType.Transaction2
        
    }
    
    
}

