//
//  OtpComponent.swift
//  IosSolution
//
//  Created by Antony David Chinchay Valdivia on 4/27/21.
//  Copyright © 2021 Antony Chinchay. All rights reserved.
//

import UIKit

class OtpComponent: UIView {
    
    var delegate : OtpComponentDelegate?
    var strategy : OtpStrategy?
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var otpTextField: UITextField!
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        initSubviews()
        
    }
    
    required init?(coder: NSCoder) {
        
        super.init(coder: coder)
        initSubviews()
        
    }
    
    func initSubviews() {
        
        Bundle.main.loadNibNamed("OtpComponent", owner: self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
        
    }
    
    func initComponent(){
        
        if let otpType = self.delegate?.getOtpType(){
            self.strategy = OtpClient.getStrategy(otpType: otpType)
        }
        
    }
    
    @IBAction func validateOtp(_ sender: UIButton) {
        
        self.strategy?.execute(delegate: self.delegate)
        
    }
    
}
