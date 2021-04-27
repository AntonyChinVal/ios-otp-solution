//
//  OtpComponentDelegate.swift
//  IosSolution
//
//  Created by Antony David Chinchay Valdivia on 4/27/21.
//  Copyright © 2021 Antony Chinchay. All rights reserved.
//

import Foundation

protocol OtpComponentDelegate {
    
    func onSuccessfulValidation(response : OtpResponse?)
    func onFailedfulValidation(error : OtpError?)
    func getOtpType() -> OtpType
    
}

