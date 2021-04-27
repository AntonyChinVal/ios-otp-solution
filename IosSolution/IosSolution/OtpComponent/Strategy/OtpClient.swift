//
//  OtpClient.swift
//  IosSolution
//
//  Created by Antony David Chinchay Valdivia on 4/27/21.
//  Copyright © 2021 Antony Chinchay. All rights reserved.
//

import Foundation

class OtpClient {
    
    static func getStrategy(otpType : OtpType) -> OtpStrategy?{
        
        var strategy :  OtpStrategy? = nil
        
        switch otpType {
            case OtpType.Transaction1:
                strategy = Transaction1Strategy()
            case OtpType.Transaction2:
                strategy = Transaction2Strategy()
        }
        
        return strategy
        
    }
    
}
