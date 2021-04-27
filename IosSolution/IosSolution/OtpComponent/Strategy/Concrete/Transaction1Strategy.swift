//
//  Transaction1Strategy.swift
//  IosSolution
//
//  Created by Antony David Chinchay Valdivia on 4/27/21.
//  Copyright © 2021 Antony Chinchay. All rights reserved.
//

import Foundation

class Transaction1Strategy : OtpStrategy{
    
    func execute(delegate: OtpComponentDelegate?) {
        
        print("Execute Transaction1Strategy")
        delegate?.onSuccessfulValidation(response: nil)
        
    }
    
}
